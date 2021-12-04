import 'package:deepika_assignment/CustomWidget/custom_widgets.dart';
import 'package:deepika_assignment/SheetUtils/sheet_popup_utils.dart';
import 'package:deepika_assignment/Utils/color_utils.dart';
import 'package:deepika_assignment/Utils/toast_utils.dart';
import 'package:deepika_assignment/Utils/custom_text.dart';
import 'package:deepika_assignment/Utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginScreen extends StatefulHookWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController mobileNumberController =  TextEditingController();

  var _commonPadding = SizeUtils.instance.appDefaultSpacing * 2;
  var _defaultPadding = SizeUtils.instance.appDefaultSpacing;
  var _defaultHeight = CustomWidget.getDefaultHeightSizedBox();
  var _doubleHeight = CustomWidget.getDefaultHeightSizedBox(height: SizeUtils.instance.appDefaultSpacing * 2);

  /*Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SizeUtils.instance.sideSheetRadius),
      ),
      child: _buildMainWidget(),
    );
  }
*/
  @override
  Widget build(BuildContext context){
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
        resizeToAvoidBottomInset: false,
      //  resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
        reverse: true,
        child: Padding(
        padding: EdgeInsets.only(bottom: bottom),
          child: _buildMainWidget(),
       ),
      ),
    );
  }

///Login Complete Widget Start
  Widget _buildMainWidget() {
    return Container(
      child: Column(
        children: [
          _closePageButton(),
          Padding(
            padding: EdgeInsets.only(left: _commonPadding, right: _commonPadding, bottom: _commonPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _screenTitle(),
                _doubleHeight,
                _mobileNumberTextField(),
                _doubleHeight,
                _submitButton(),
                _defaultHeight,
                _privacyCommonText(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _mobileNumberTextField(){
    return  CustomWidget.getTextField(context, mobileNumberController, "Enter your mobile number",);
  }

  Widget _screenTitle(){
    return const Text("Quick Login/ Register",style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0),);
  }
  ///Login Complete Widget End

  ///Common Widget Start
  Widget _closePageButton(){
    return  Padding(
      padding: EdgeInsets.only(top: _defaultPadding, right: _defaultPadding),
      child: Align(
          alignment: Alignment.topRight,
          child: CustomWidget.pageCloseButton(context)),
    );
  }

  Widget _privacyCommonText(){
    return const Text('By clicking continue, you agree with our Privacy Policy' ,style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.0,),);
  }

  Widget _submitButton(){
    return  CustomWidget.getRoundedButtonWidget(context, "Continue",
        onTap: (){
          _hitApiOtpForMobile();
        }
    );
  }

  ///Common Widget End

  /// API Widget Start
  void _hitApiOtpForMobile() {
    var _mobileNumber = mobileNumberController.text;
    var _otp = '7777';
    if (mobileNumberController.text.isEmpty) {
      ToastUtils.show("Please Enter Mobile Number");
    } else {
      Navigator.pop(context);
      SheetPopupUtils.instance.showBottomSheetOTPFlow(context, _mobileNumber, _otp);
      //getOtpForMobileApiRequest();
    }
  }
/// API Widget End
}

