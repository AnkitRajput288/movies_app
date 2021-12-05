import '../../CustomWidget/custom_widgets.dart';
import '../../SheetUtils/sheet_popup_utils.dart';
import '../../Utils/toast_utils.dart';
import '../../Utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginScreen extends StatefulHookWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController mobileNumberController =  TextEditingController();

  final _commonPadding = SizeUtils.instance.appDefaultSpacing * 2;
  final _defaultPadding = SizeUtils.instance.appDefaultSpacing;
  final _defaultHeight = CustomWidget.getDefaultHeightSizedBox();
  final _doubleHeight = CustomWidget.getDefaultHeightSizedBox(height: SizeUtils.instance.appDefaultSpacing * 2);

  @override
  Widget build(BuildContext context){
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
    return Column(
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
    );
  }

  Widget _mobileNumberTextField(){
    return  CustomWidget.getTextFieldForMobile(context, mobileNumberController, "Enter your mobile number",);
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
    }
  }
/// API Widget End
}

