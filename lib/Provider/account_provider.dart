import 'dart:async';

import '../ApiHandler/api_handler.dart';
import '../EventBus/event_bus_utils.dart';
import '../Model/Request/Account/verification_otp_request.dart';
import '../Model/Response/verification_otp_response.dart';
import '../Model/Response/verification_otp_result_response.dart';
import '../SharedPref/shared_pref_util.dart';
import '../SheetUtils/sheet_popup_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/src/provider.dart';


import 'provider_utils.dart';

class AccountProvider extends ChangeNotifier {

  AccountProvider() {
    _refreshLoginState();
  }

  bool _isLogin = false;

  bool get isLogin => _isLogin;

  VerificationOtpResponse? verificationOtpResponse;

  VerificationOtpResultResponse? get getVerificationOtpResponse => verificationOtpResponse?.results;

  int get _getLoggedInUserId => verificationOtpResponse?.results?.userLoginId ?? -1;

  bool _isApiCallingVerifyOtp = false;

  Function? _functionToExecuteIfLoggedIn;

  Future<void> saveAccountDataToSharedPreference(VerificationOtpResponse? loginData) async {
    if (loginData != null) {
      await SharedPrefUtil.saveLoginData(loginData);
      await _refreshLoginState();
      EventBusUtils.eventLogin();
      _executeLoggingFunctionAfterDelay();
    }
  }

  Future<void> _refreshLoginState() async {
    _isLogin = await SharedPrefUtil.isLogin();
    verificationOtpResponse = await SharedPrefUtil.getLoginData();
    notifyListeners();
  }

  Future<VerificationOtpResponse?> _hitApiForVerificationOtp(
    VerificationOtpRequest verificationOtpRequest,
  ) async {
    _isApiCallingVerifyOtp = true;
    var response = ApiHandler.getVerificationOtp(verificationOtpRequest);
    _isApiCallingVerifyOtp = false;
    await saveAccountDataToSharedPreference(response);
    return response;
  }

  void checkLoginAndMove(BuildContext context, Function? _functionToExecuteIfLoggedIn) async {
    this._functionToExecuteIfLoggedIn = _functionToExecuteIfLoggedIn;

    if (!_isLogin) {
      SheetPopupUtils.instance.showBottomSheetLoginFlow(context);
    } else {
      _executeLoggingFunction();
    }
  }

  void _executeLoggingFunctionAfterDelay() {
    Timer.periodic(const Duration(milliseconds: 500), (timer) {
      timer.cancel();
      _executeLoggingFunction();
    });
  }

  void _executeLoggingFunction() {
    if(_isLogin && _functionToExecuteIfLoggedIn != null) {
      _functionToExecuteIfLoggedIn!();
      _functionToExecuteIfLoggedIn = null;
    }
  }

  void logout(BuildContext context,) async {
    await SharedPrefUtil.logout();
    await _refreshLoginState();
   // NavigatorUtils.moveToAndRemoveAllOtherToDashboardScreen(context);
  }

  static hitVerificationOtpApi(BuildContext context, VerificationOtpRequest verificationOtpRequest) => context.read(accountProvider)._hitApiForVerificationOtp(verificationOtpRequest);

  static checkLoginAndMoveRed(BuildContext context, Function? _functionToExecuteIfLoggedIn) => context.read(accountProvider).checkLoginAndMove(context, _functionToExecuteIfLoggedIn);
  
  static int getLoggedInUserId(BuildContext context) => context.read(accountProvider)._getLoggedInUserId;

  static logoutRead(BuildContext context) => context.read(accountProvider).logout(context);
}
