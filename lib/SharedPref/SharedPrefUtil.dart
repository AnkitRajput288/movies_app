import 'dart:async';
import 'dart:convert';
import 'package:deepika_assignment/Model/Response/VerificationOtpResponse.dart';
import 'package:flutter_udid/flutter_udid.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:deepika_assignment/Network/app_theme_meta.dart';

enum AppMetaDataType { MetaData, IpData }

class SharedPrefUtil {
  static const String _KEY_LOGIN_DATA = "loginData";
  static const String _THEME = "appTheme";
  static const String _KEY_APP_UDID = "appUDID";
  static const String _KEY_LANGUAGE = 'appAllLanguages';
  static const String _KEY_USER_ECOMM_CART = 'userEcommCart';

  static const _DEFAULT_LOGIN_ID = -1;

  static List<String> alSpKeysToRemove = [
    _KEY_LOGIN_DATA,
    _KEY_APP_UDID,
    _THEME,
    _KEY_USER_ECOMM_CART,
  ];

  static Future<bool> _saveAppThemeDataJson(var _jsonToSave) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_THEME, _jsonToSave);
    return true;
  }

  static Future<bool> saveAppTheme(AppThemeMeta themeMetaData) async {
    try {
      var res = themeMetaData.toJson();
      var jsonLogin = json.encode(res);
      await _saveAppThemeDataJson(jsonLogin);
      return true;
    } catch (e) {
      return false;
    }
  }

  static Future<AppThemeMeta> getAppTheme() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      String? objectSP = prefs.getString(_THEME);
      if (objectSP != null) {
        Map<String, dynamic> mapSP = json.decode(objectSP);

        var objectToReturn = AppThemeMeta.fromJson(mapSP);
        return objectToReturn;
      } else {
        return AppThemeMeta.getDefaultTheme();
      }
    } catch (e) {
      return AppThemeMeta.getDefaultTheme();
    }
  }

  ///
  /// App UDID related Methods - START
  ///
  static Future<bool> setAppUDID() async {
    try {
      String dataToSave = await FlutterUdid.consistentUdid;
      final prefs = await SharedPreferences.getInstance();
      prefs.setString(_KEY_APP_UDID, dataToSave);
      return true;
    } catch (e) {
      return false;
    }
  }

  static Future<String> getAppUDID() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      String? spData = prefs.getString(_KEY_APP_UDID);

      spData ??= await FlutterUdid.consistentUdid;
      return spData;
    } catch (e) {}
    return await FlutterUdid.consistentUdid;
  }

  ///
  /// App UDID related Methods - END
  ///

  ///
  /// Login Data - Start
  ///
  static Future<bool> _saveLoginDataJson(String loginData) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(_KEY_LOGIN_DATA, loginData);
    return true;
  }

  static Future<bool> saveLoginData(VerificationOtpResponse loginData) async {
    Map<String, dynamic> res = loginData.toJson();
    String jsonLogin = json.encode(res);
    if (loginData != null) {
      _saveLoginDataJson(jsonLogin);
      return true;
    } else {
      return false;
    }
  }

  static Future<VerificationOtpResponse?> getLoginData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      String? loginData = prefs.getString(_KEY_LOGIN_DATA);

      if (loginData != null) {
        Map<String, dynamic> user = json.decode(loginData);

        VerificationOtpResponse loginRes =
            new VerificationOtpResponse.fromJson(user);
        return loginRes;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  static Future<String> getLoggedInUserToken() async {
    try {
      final loginRes = await getLoginData();
      return loginRes?.results?.token ?? '';
    } catch (e) {
      return '';
    }
  }

  static Future<num> getLoggedInUserId() async {
    try {
      final loginRes = await getLoginData();
      return loginRes?.results?.userLoginId ?? _DEFAULT_LOGIN_ID;
    } catch (e) {
      return _DEFAULT_LOGIN_ID;
    }
  }

  static Future<bool> isLoggedInUser(int userId) async {
    try {
      final loginUserId = await getLoggedInUserId();
      return loginUserId == userId;
    } catch (e) {
      return false;
    }
  }

  static Future<bool> isLogin() async {
    try {
      final _userId = await getLoggedInUserId();
      return (_userId != _DEFAULT_LOGIN_ID) && (_userId > 0);
    } catch (e) {
      return false;
    }
  }

  static Future<void> logout() async {
    //var response = await SharedPrefUtil.getLoginData();
    final prefs = await SharedPreferences.getInstance();
    for (int index = 0; index < alSpKeysToRemove.length; index++) {
      String spKeysToRemove = alSpKeysToRemove[index];
      await prefs.remove(spKeysToRemove);
      prefs.clear();
      var isLoginNow = prefs.containsKey(_KEY_LOGIN_DATA);
      print("is login now available -> $isLoginNow");
    }
  }

  ///
  ///Login Data - End
  ///

}
