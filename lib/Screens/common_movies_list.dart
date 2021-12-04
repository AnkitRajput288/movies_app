import 'dart:async';
import 'package:deepika_assignment/Network/Database/moor_database.dart';
import 'package:deepika_assignment/Provider/account_provider.dart';
import 'package:deepika_assignment/SheetUtils/sheet_popup_utils.dart';
import 'package:deepika_assignment/Utils/CommonEmptyScreenUI.dart';
import 'package:deepika_assignment/Utils/color_utils.dart';
import 'package:deepika_assignment/Utils/list_of_objects_utils.dart';
import 'package:flutter/material.dart';
import 'package:deepika_assignment/CustomWidget/custom_widgets.dart';
import '../main.dart';
import 'detail_page.dart';

class CommonMoviesList extends StatefulWidget {
  final List<Movie>? movies;
  final String? module;

  const CommonMoviesList({this.movies,this.module, Key? key}) : super(key: key);

  @override
  _CommonMoviesListState createState() => _CommonMoviesListState(movies,module);
}

class _CommonMoviesListState extends State<CommonMoviesList> {

  List<Movie>? movies;
  String? module;
  late int _loggedInUserId;

  _CommonMoviesListState(this.movies, this.module);

  Future<void>_loadDummyDataAndSaveToDatabase()async{
    var listOfMovies = ListOfObjectsUtils().getMovieData();
    await database.batchInsert(listOfMovies);
  }

  @override
  void didUpdateWidget(covariant CommonMoviesList oldWidget) {
    super.didUpdateWidget(oldWidget);
    movies = widget.movies;
  }

  @override
  Widget build(BuildContext context,) {
    _loggedInUserId = AccountProvider.getLoggedInUserId(context);
   return _infiniteScrollListWidget();
  }

  Widget _infiniteScrollListWidget(){
    return module == 'MyMovies' || module == 'WatchedMovies' ?
    _buildMainWidget() :
      Expanded(
        child: NotificationListener(
          child: _buildMainWidget(),
          onNotification: (ScrollNotification scrollInfo) {
            double currentPixel = scrollInfo.metrics.pixels;
            if (currentPixel == scrollInfo.metrics.maxScrollExtent) {
              _loadDummyDataAndSaveToDatabase();
            }
            return true;
          },
        )
    );

  }

  Widget _buildMainWidget() {
        if((movies?.length ?? 0) > 0) {
         return ListView.builder(
        itemBuilder: (_, index) {
          return _commonCardUI(movies![index]);
        },
        itemCount: movies?.length ?? 0,
      );
    } else {
      return CommonEmptyScreenUI();
    }
  }


  Widget _commonCardUI(Movie movieData){
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage(movieDetail: movieData,)));
      },
      child: Container(
        child: Card(
          elevation: 4.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Image.asset(movieData.image ?? "", fit: BoxFit.cover,),
                flex: 1,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomWidget.getTextWidget(context, movieData.name ?? '', fontWeight: FontWeight.bold),
                      CustomWidget.getDefaultHeightSizedBox(),
                      CustomWidget.getTextWidget(context, movieData.detail ?? '')
                    ],
                  ),
                ),
                flex: 2,
              ),
              _cardActionUI(movieData),
            ],
          ),
        ),
      ),
    );
  }

  Widget _cardActionUI(Movie movieData){
    return  Padding(
      padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
      child: Column(
        children: [
          CustomWidget.getDefaultHeightSizedBox(),
          _commonWatchAndEditAndDeleteUI(
            icon: Icons.remove_red_eye,
            color: movieData.isMovieWatched ? Colors.green : Colors.grey,
            onTap: () {
              _eventWatch(movieData);
            },
          ),
          CustomWidget.getDefaultHeightSizedBox(),
          Visibility(
            visible: _loggedInUserId == movieData.directorID,
            child: _commonWatchAndEditAndDeleteUI(
              icon: Icons.edit,
              color: ColorUtils.greyIconColor,
              onTap: () {
                AccountProvider.checkLoginAndMoveRed(context, () {
                  SheetPopupUtils.instance.showBottomSheetAddMovie(context, movie: movieData,);
                });
              },
            ),
          ),
          CustomWidget.getDefaultHeightSizedBox(),
          Visibility(
            visible: _loggedInUserId == movieData.directorID,
            child: _commonWatchAndEditAndDeleteUI(
              icon: Icons.delete_outline,
              color: ColorUtils.redColor,
              onTap: () {
                setState(() {
                  database.deleteMovie(movieData);
                });
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _commonWatchAndEditAndDeleteUI({IconData? icon, Color? color,onTap}){
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: 35.0,
        height: 35.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        child: Icon(icon,size: 20.0,),
      ),
    );
  }

  void _eventWatch(Movie movieDetail) async {

    Future<bool> _watchQuery;
    if(movieDetail.isMovieWatched) {
      _watchQuery = database.movieNotWatched(movieDetail);
    } else {
      _watchQuery = database.movieWatched(movieDetail);
    }
    var isSuccess = await _watchQuery;

    var _toggleWatchValue = isSuccess ? !movieDetail.isMovieWatched : movieDetail.isMovieWatched;

    movieDetail = movieDetail.copyWith(isMovieWatched: _toggleWatchValue);

    setState(() {});
  }

}
