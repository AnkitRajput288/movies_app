import 'dart:async';
import 'dart:convert';
import 'package:ankit_assignment/Utils/print_utils.dart';

import '../Model/Response/verification_otp_response.dart';
import 'package:flutter_udid/flutter_udid.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Network/app_theme_meta.dart';

class SharedPrefUtil {
  static const String leyLoginData = "loginData";
  static const String theme = "appTheme";
  static const String keyAppUDID = "appUDID";

  static const defaultLoginId = -1;

  static List<String> alSpKeysToRemove = [
    leyLoginData,
    keyAppUDID,
    theme,
  ];

  static Future<bool> _saveAppThemeDataJson(var _jsonToSave) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(theme, _jsonToSave);
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
      String? objectSP = prefs.getString(theme);
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
      prefs.setString(keyAppUDID, dataToSave);
      return true;
    } catch (e) {
      return false;
    }
  }

  static Future<String> getAppUDID() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      String? spData = prefs.getString(keyAppUDID);

      spData ??= await FlutterUdid.consistentUdid;
      return spData;
    } catch (e) {
      PrintUtils.printLog(e.toString());
    }
    return await FlutterUdid.consistentUdid;
  }

  ///
  /// App UDID related Methods - END
  ///

  ///
  /// Login Database - Start
  ///
  static Future<bool> _saveLoginDataJson(String loginData) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(leyLoginData, loginData);
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
      String? loginData = prefs.getString(leyLoginData);

      if (loginData != null) {
        Map<String, dynamic> user = json.decode(loginData);

        VerificationOtpResponse loginRes =
            VerificationOtpResponse.fromJson(user);
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
      return loginRes?.results?.userLoginId ?? defaultLoginId;
    } catch (e) {
      return defaultLoginId;
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
      return (_userId != defaultLoginId) && (_userId > 0);
    } catch (e) {
      return false;
    }
  }

  static Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    for (int index = 0; index < alSpKeysToRemove.length; index++) {
      String spKeysToRemove = alSpKeysToRemove[index];
      await prefs.remove(spKeysToRemove);
      prefs.clear();
    }
  }

  ///
  ///Login Database - End
  ///

}
