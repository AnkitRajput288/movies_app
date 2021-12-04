import 'package:deepika_assignment/CustomWidget/custom_widgets.dart';
import 'package:deepika_assignment/Utils/size_utils.dart';
import 'package:flutter/material.dart';

class CommonEmptyScreenUI extends StatefulWidget {

  String? text;
  CommonEmptyScreenUI({this.text});

  @override
  _CommonEmptyScreenUIState createState() => _CommonEmptyScreenUIState();
}

class _CommonEmptyScreenUIState extends State<CommonEmptyScreenUI> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(SizeUtils.instance.appDefaultSpacing),
      child: Center(
          child:  CustomWidget.getTextWidget(context, widget.text ?? 'No Data Found', fontWeight: FontWeight.bold),
     )
    );
  }
}
