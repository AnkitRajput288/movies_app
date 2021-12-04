import 'dart:ui';

import 'package:deepika_assignment/Network/Database/moor_database.dart';
import 'package:deepika_assignment/Screens/Account/login_screen.dart';
import 'package:deepika_assignment/Screens/Account/otp_screen.dart';
import 'package:deepika_assignment/Screens/add_update_movie_widget.dart';
import 'package:deepika_assignment/Screens/select_image.dart';
import 'package:deepika_assignment/Utils/color_utils.dart';
import 'package:deepika_assignment/Utils/exception_utils.dart';
import 'package:flutter/material.dart';

class SheetPopupUtils {
  static final instance = SheetPopupUtils();

  SheetPopupUtils() {
    ExceptionUtils.instance.throwCanNotCreateObjectSingletonInstance();
  }

  void showBottomSheetLoginFlow(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: true,
      isDismissible: false,
      shape: getBottomSheetShape(),
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.60,
          minChildSize: 0.5,
          maxChildSize: 0.60,
          builder: (_context, scrollController) {
            return _getBottomSheetBackdropFilterWidget(
              context,
              child: LoginScreen(),
            );
          },
        );
      },
    );
  }

  void showBottomSheetOTPFlow(BuildContext context,_mobileNumber, _otp) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: true,
      isDismissible: false,
      shape: getBottomSheetShape(),
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.60,
          minChildSize: 0.5,
          maxChildSize: 0.60,
          builder: (_context, scrollController) {
            return _getBottomSheetBackdropFilterWidget(
              context,
              child: OTPScreen(_mobileNumber, _otp),
            );
          },
        );
      },
    );
  }

  void showBottomSheetAddMovie(BuildContext context, {Movie? movie}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: true,
      isDismissible: false,
      shape: getBottomSheetShape(),
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.85,
          minChildSize: 0.5,
          maxChildSize: 0.85,
          builder: (_context, scrollController) {
            return _getBottomSheetBackdropFilterWidget(
              context,
              child: AddUpdateMovieWidget(movie: movie,),
            );
          },
        );
      },
    );
  }
  void showBottomSheetSelectImage(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: true,
      isDismissible: false,
      shape: getBottomSheetShape(),
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.85,
          minChildSize: 0.5,
          maxChildSize: 0.85,
          builder: (_context, scrollController) {
            return _getBottomSheetBackdropFilterWidget(
              context,
              child: SelectImage(),
            );
          },
        );
      },
    );
  }

  ///
  /// Common Methods
  ///

  Widget _getBottomSheetBackdropFilterWidget(BuildContext context,
      {required Widget child}) {
    return SafeArea(
      child: Container(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
          child: _getBottomSheetRoundedCornerWidget(context, child),
        ),
      ),
    );
  }

  Widget getBlurredWidget(BuildContext context, {required Widget child}) {
    return _getBottomSheetBackdropFilterWidget(context, child: child);
  }

  Widget _getBottomSheetRoundedCornerWidget(
      BuildContext context, Widget child) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      child: Container(
        color: Theme.of(context).bottomSheetTheme.backgroundColor,
        child: child,
      ),
    );
  }

  Widget getMainBottomSheetWidget(BuildContext context,
      {required Widget mainChild, String? title}) {
    return _getBottomSheetMainWidgetInsideContainer(
      context,
      // child: KeyboardAvoidingNew(
      child: _getBottomSheetBackdropFilterWidget1(context,
          child: Wrap(
            children: <Widget>[
              mainChild,
            ],
          )),
      //  )
    );
  }

  ShapeBorder getBottomSheetShape() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
      //side: BorderSide(color: ColorUtils.primaryColor)
    );
  }

  Widget _getBottomSheetMainWidgetInsideContainer(BuildContext context,
      {required Widget child}) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.0, 0.1],
              colors: [Colors.transparent, Colors.white])),
      child: child,
    );
  }

  Widget _getBottomSheetBackdropFilterWidget1(BuildContext context,
      {required Widget child}) {
    return Container(
      child: _getBottomSheetRoundedCornerWidget1(child),
    );
  }

  Widget _getBottomSheetRoundedCornerWidget1(Widget child) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60), topRight: Radius.circular(60)),
      child: Container(
        color: ColorUtils.whiteColor,
        child: child,
      ),
    );
  }
}
