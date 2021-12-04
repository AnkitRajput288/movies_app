import 'package:deepika_assignment/CustomWidget/custom_widgets.dart';
import 'package:deepika_assignment/Network/Database/moor_database.dart';
import 'package:deepika_assignment/Provider/account_provider.dart';
import 'package:deepika_assignment/SheetUtils/sheet_popup_utils.dart';
import 'package:deepika_assignment/Utils/color_utils.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class DetailPage extends StatefulWidget {
  final Movie? movieDetail;

  const DetailPage({this.movieDetail, Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState(movieDetail);
}

class _DetailPageState extends State<DetailPage> {
  Movie? movieDetail;

  _DetailPageState(this.movieDetail);

  late int _loggedInUserId;

  @override
  Widget build(BuildContext context) {
    _loggedInUserId = AccountProvider.getLoggedInUserId(context);
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20,
        automaticallyImplyLeading: true,
        leading: Padding(
          padding: const EdgeInsets.only(left:10.0),
          child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios,)),
        ),
        title:const Text("Detail Page",style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0),),
        actions: [
          _cardActionUI(),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: _buildDetailPage(),
        ),
      ),
    );
  }

  Widget _buildDetailPage(){
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            width: width,
            child: Image.asset(movieDetail?.image ?? "", fit: BoxFit.fitWidth,)),
        CustomWidget.getDefaultHeightSizedBox(),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomWidget.getTextWidget(context, movieDetail?.name ?? '', fontWeight: FontWeight.bold),
              CustomWidget.getDefaultHeightSizedBox(),
              CustomWidget.getTextWidget(context, movieDetail?.detail ?? ''),
            ],
          ),
        ),

      ],
    );
  }

  Widget _cardActionUI(){
    return  Padding(
      padding: const EdgeInsets.all(0.0),
      child: Row(
        children: [
          CustomWidget.getDefaultHeightSizedBox(),
          _commonWatchAndEditAndDeleteUI(
            icon: Icons.remove_red_eye,
            color: movieDetail!.isMovieWatched ? Colors.green : Colors.grey,
            onTap: () {
              setState(() {
               // database.movieWatched(movieData);
              });
            },
          ),
          Visibility(
            visible: _loggedInUserId == movieDetail?.directorID,
            child: _commonWatchAndEditAndDeleteUI(
              icon: Icons.edit,
              color: ColorUtils.greyIconColor,
              onTap: () {
                AccountProvider.checkLoginAndMoveRed(context, () {
                 // SheetPopupUtils.instance.showBottomSheetAddMovie(context, movie: movieData,);
                });
              },
            ),
          ),
          Visibility(
            visible: _loggedInUserId == movieDetail?.directorID,
            child: _commonWatchAndEditAndDeleteUI(
              icon: Icons.delete_outline,
              color: ColorUtils.redColor,
              onTap: () {
                setState(() {
                 // database.deleteMovie(movieData);
                });
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _commonWatchAndEditAndDeleteUI({IconData? icon, Color? color,onTap}){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          width: 30.0,
          height: 30.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
          child: Icon(icon,size: 16.0,),
        ),
      ),
    );
  }

}
