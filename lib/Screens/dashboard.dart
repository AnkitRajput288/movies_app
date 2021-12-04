import 'package:deepika_assignment/Constants/constant.dart';
import 'package:deepika_assignment/CustomWidget/custom_widgets.dart';
import 'package:deepika_assignment/Provider/ProviderUtils.dart';
import 'package:deepika_assignment/Provider/account_provider.dart';
import 'package:deepika_assignment/Screens/all_movies_widget.dart';
import 'package:deepika_assignment/Screens/my_movies_widget.dart';
import 'package:deepika_assignment/Screens/watched_movies_widget.dart';
import 'package:deepika_assignment/SheetUtils/sheet_popup_utils.dart';
import 'package:deepika_assignment/Utils/color_utils.dart';
import 'package:deepika_assignment/Utils/list_of_objects_utils.dart';
import 'package:deepika_assignment/Utils/toast_utils.dart';
import 'package:flutter/material.dart';
import 'package:deepika_assignment/Utils/app_utils.dart';
import 'package:deepika_assignment/Utils/enum_utils.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import '../main.dart';
import 'common_movies_list.dart';


class Dashboard extends StatefulHookWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with AutomaticKeepAliveClientMixin, WidgetsBindingObserver {
  @override
  bool get wantKeepAlive {
    return true;
  }
  late AccountProvider _verificationOtpProvider;

  bool _isLogin = false;

  EnumDashboardActiveScreenType _activeScreen =
      EnumDashboardActiveScreenType.ALL;

  int _tabSelected = 0;
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );


  late Widget homePage;
  late Widget myMovies;
  late Widget myWatched;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    populateData();
  }

  void populateData()async{
    var allMovies = await database.getAllMovies();
    if(allMovies.isEmpty){
      _loadDummyDataAndSaveToDatabase();
    }
  }

  Future<void>_loadDummyDataAndSaveToDatabase()async{
    var listOfMovies = ListOfObjectsUtils().getMovieData();
    await database.batchInsert(listOfMovies);
  }


  @override
  void didChangeDependencies() {
    _initBottomTabs();
    super.didChangeDependencies();
  }

  void _initBottomTabs() {
    homePage = AllMoviesWidget();
    myMovies = MyMoviesWidget();
    myWatched = WatchedMoviesWidget();
  }



  @override
  Widget build(BuildContext context) {
    _verificationOtpProvider = useProvider(accountProvider);
    _isLogin = _verificationOtpProvider.isLogin;
   var _userId = _verificationOtpProvider.getVerificationOtpResponse?.userLoginId ?? 0;

    return Container(
      child: Stack(
        children: <Widget>[
          Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: AppBar(
              title: _appLogoWithUserName(),
              actions: [
                _logOutUI()
              ],
            ),
            body: SafeArea(child: buildPageView()),

            bottomNavigationBar: _buildBottomAppBar(),

            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.black87,
              child: const Icon(Icons.add, color: Colors.white,),
              onPressed: (){
                AccountProvider.checkLoginAndMoveRed(context, () {
                  SheetPopupUtils.instance.showBottomSheetAddMovie(context);
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomAppBar(){
    return BottomAppBar(
      child: Container(
        height: 48,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: getNavigationButton('All', () {
                _changeScreenTo(EnumDashboardActiveScreenType.ALL);
              }, EnumDashboardActiveScreenType.ALL),
            ),
            Expanded(
              child: getNavigationButton('My Movies', () {
                _changeScreenTo(EnumDashboardActiveScreenType.B);
              }, EnumDashboardActiveScreenType.B),
            ),
            Expanded(
              child: getNavigationButton('My Watched', () {
                _changeScreenTo(EnumDashboardActiveScreenType.C);
              }, EnumDashboardActiveScreenType.C),
            ),
          ],
        ),
      ),
    );
  }

  void selectedTab(int index) {
    if (_tabSelected == index) {
      _tabAlreadySelected(index);
    } else {
      _moveToTab(index);
    }
  }

  void _moveToTab(int index) {
    setState(() {
      _tabSelected = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 10), curve: Curves.ease);
    });
  }

  void _tabAlreadySelected(int index) {

  }

  Widget buildPageView() {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      pageSnapping: false,
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[homePage, myMovies, myWatched],
    );
  }

  void pageChanged(int index) {
    setState(() {
      _tabSelected = index;
    });
  }

  void _changeScreenTo(EnumDashboardActiveScreenType _changedScreen) {
    if (_changedScreen != _activeScreen) {
      _activeScreen = _changedScreen;
    }

    switch (_activeScreen) {
      case EnumDashboardActiveScreenType.ALL:
        selectedTab(0);
        break;
      case EnumDashboardActiveScreenType.B:
        AccountProvider.checkLoginAndMoveRed(context, () {
          selectedTab(1);
        });
        break;
      case EnumDashboardActiveScreenType.C:
        AccountProvider.checkLoginAndMoveRed(context, () {
          selectedTab(2);
        });
        break;
    }
    AppUtils.refreshCurrentState(this);
  }

  Widget getNavigationButton(
      String name,
      Function funToExecute,
      EnumDashboardActiveScreenType _screenType) {
    Color colorActive = Colors.white;
    Color colorInactive = Colors.grey;

    Color textSelectedColor =
    (_screenType == _activeScreen) ? colorActive : colorInactive;

    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.all(Constant.instance.appDefaultSpacingHalf / 2),
      child: InkWell(
        splashColor: Colors.grey[300],
        borderRadius: BorderRadius.circular(48.0),
        highlightColor: Colors.transparent,
        child: CustomWidget.getTextWidget(context, name, textAlign: TextAlign.center, fontWeight: FontWeight.w600,
        textColor: textSelectedColor),
        onTap: () {
          funToExecute();
        },
      ),
    );
  }

  Widget _logOutUI(){
    double width = MediaQuery.of(context).size.width;
    return _isLogin ? InkWell(
        onTap: ()=> showDialog(
          context: context,
          builder: (_) => Dialog(
            child: Container(
              height: 150.0,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: ColorUtils.greyIconColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        CustomWidget.getTextWidget(context,'Are you sure?' , fontWeight: FontWeight.bold,textSize: 20.0,textColor: ColorUtils.blackColor),
                        CustomWidget.getDefaultHeightSizedBox(),
                        CustomWidget.getTextWidget(context,'do you want to log out!' ,textSize: 16.0,textColor: ColorUtils.blackColor),
                      ],
                    ),
                    CustomWidget.getDefaultHeightSizedBox(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                            onTap: (){

                    ToastUtils.show("You have Logged Out");
                    logout();
                  },
                            child: CustomWidget.getTextWidget(context,'Confirm' , fontWeight: FontWeight.bold,textColor: ColorUtils.darkBlueTextColor)),
                        CustomWidget.getDefaultWidthSizedBox(),
                        InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: CustomWidget.getTextWidget(context,'Cancel' , fontWeight: FontWeight.bold,textColor: ColorUtils.blackColor)),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(child: Text('Log Out')),
        )) :
    InkWell(
        onTap: (){
          SheetPopupUtils.instance.showBottomSheetLoginFlow(context,);
        },
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(child: Text('Login')),
        ));
  }

  Widget _appLogoWithUserName(){
    var _name = _verificationOtpProvider.getVerificationOtpResponse?.userName ?? '';
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
       const Text('Movies App'),
        const  SizedBox(width: 8.0,),
          Text(_name, style: TextStyle(fontSize: 12.0),),
      ],
    );
  }

  void logout() async {
    AccountProvider.logoutRead(context);
    Navigator.pop(context);
  }
}
