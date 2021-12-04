import 'dart:async';
import 'package:deepika_assignment/CustomWidget/custom_widgets.dart';
import 'package:deepika_assignment/Model/Request/Account/VerificationOtpRequest.dart';
import 'package:deepika_assignment/Provider/account_provider.dart';
import 'package:deepika_assignment/Utils/color_utils.dart';
import 'package:deepika_assignment/Utils/toast_utils.dart';
import 'package:deepika_assignment/Utils/otp_utils.dart';
import 'package:deepika_assignment/Utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class OTPScreen extends StatefulHookWidget {
  String mobileNumber;
  String otp;
  OTPScreen(this.mobileNumber, this.otp,{Key? key}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  String? _otpPin;
  Color bgColorOTP = Colors.red;

  var _commonPadding = SizeUtils.instance.appDefaultSpacing * 2;
  var _defaultPadding = SizeUtils.instance.appDefaultSpacing;
  var _defaultHeight = CustomWidget.getDefaultHeightSizedBox();
  var _doubleHeight = CustomWidget.getDefaultHeightSizedBox(height: SizeUtils.instance.appDefaultSpacing * 2);

///Logic Widget Start
  final int timerMaxSeconds = 60;
  int currentSeconds = 0;
  String get timerText =>
      '${((timerMaxSeconds - currentSeconds) ~/ 60).toString().padLeft(2, '0')}: '
          '${((timerMaxSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}';

  Timer? _timerOtp;
  void startTimeout([int? milliseconds]) {
    _timerOtp = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (currentSeconds >= timerMaxSeconds) {_timerOtp?.cancel();}
      setState(() {
        currentSeconds += 1;
      });
    });
  }

  @override
  void initState() {
    super.initState();
   // _mobileNumber = _mobileSendOtpResponse?.mobileNumber;
  //  _otpLength = _mobileSendOtpResponse?.otp?.trim().length ?? 0;
    startTimeout();
  }
  ///Logic Widget End
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

  /*Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SizeUtils.instance.sideSheetRadius),
      ),
      child: _buildMainWidget(),
    );
  }*/

  ///OTP Complete Widget Start
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
              Text("Enter OTP sent to +91-${widget.mobileNumber}", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0),),
              _doubleHeight,
              _buildOtpInputUI(),
              _doubleHeight,
              _timerText(),
              _defaultHeight,
              _resendOTPButton(),
              _defaultHeight,
              _continueButton(),
              _doubleHeight,
              _privacyCommonText(),
               ],
             ),
            ),
          ],
        )
      );
     }

     Widget _resendOTPButton(){
       return Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text("Didn't receive the code? ",
               style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.0),),
           InkWell(
             onTap: () {
              // hitResendOTP();
               // NavigatorUtils.moveToOTPDialogUI(context);
             },
             child: Text( "Resend OTP",
                 style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.0),),
           ),
         ],
       );
     }

     Widget _timerText(){
     return Align(
         alignment: Alignment.center,
         child: Text( timerText,
             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),)
       );
     }

  ///OTP Complete Widget End



  ///Common Widget Start
  Widget _privacyCommonText(){
    return const Text('By clicking continue, you agree with our Privacy Policy' ,style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.0,),);
  }


  Widget _continueButton(){
    return  CustomWidget.getRoundedButtonWidget(context,
        "Continue", onTap: () {
          _hitApiVerifyOTP();
     }
    );
  }

  Widget _closePageButton(){
    return Padding(
      padding: EdgeInsets.only(top: _defaultPadding, right: _defaultPadding),
      child: Align(
          alignment: Alignment.topRight,
          child: CustomWidget.pageCloseButton(context)),
    );
  }

  ///OTP PIN View
  Widget _buildOtpInputUI() {
    return OTPTextField(
      length: 4,
      width: MediaQuery.of(context).size.width,
      fieldWidth: 70,
      fieldStyle: FieldStyle.box,
      style: TextStyle(fontSize: 20, color: ColorUtils.blackColor),
      onCompleted: (pin) {
        _otpPin = pin;
        print("Completed: " + pin);
      },
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timerOtp?.cancel();
  }
  ///Common Widget End


  void verificationOtpApiRequest() async {
    VerificationOtpRequest requestVerificationOtp = VerificationOtpRequest(
      MobileNumbar: widget.mobileNumber,
      Otp: _otpPin,
    );
    var _response = await AccountProvider.hitVerificationOtpApi(context, requestVerificationOtp);
    if (_response?.isApiSuccess() ?? false) {
      ToastUtils.show(_response?.message ?? '');
      Navigator.pop(context);
    } else {
      ToastUtils.show(_response?.message ?? '');
    }
  }

  void _hitApiVerifyOTP() {
    if (_otpPin == null || _otpPin == '') {
      ToastUtils.show("Please Enter OTP");
    } else {
      verificationOtpApiRequest();
    }
  }
}
