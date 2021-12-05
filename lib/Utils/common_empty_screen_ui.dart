import '../CustomWidget/custom_widgets.dart';
import 'size_utils.dart';
import 'package:flutter/material.dart';

class CommonEmptyScreenUI extends StatefulWidget {

  String? text;
  CommonEmptyScreenUI({Key? key, this.text}) : super(key: key);

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
