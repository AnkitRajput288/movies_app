
import 'dart:io';

import '../Utils/app_enums.dart';
import '../Utils/color_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_fonts/google_fonts.dart';

part 'AppThemeMeta.freezed.dart';
part 'AppThemeMeta.g.dart';

@freezed
class AppThemeMeta with _$AppThemeMeta {

  const AppThemeMeta._();
  const factory AppThemeMeta(EnumAppThemeParentBackground enumParentBackground, EnumAppThemeChildColor enumChildColor, EnumAppThemeFonts enumFont, EnumAppThemeFontsSize enumFontSize) = _AppThemeMeta;

  factory AppThemeMeta.fromJson(Map<String, dynamic> json) => _$AppThemeMetaFromJson(json);

  static AppThemeMeta getDefaultTheme() {
    return const AppThemeMeta(EnumAppThemeParentBackground.light, EnumAppThemeChildColor.skyBlue, EnumAppThemeFonts.roboto, EnumAppThemeFontsSize.d);
  }

  double getFontSize() {
    switch(enumFontSize) {
      case EnumAppThemeFontsSize.d:
        return 16.0;
      case EnumAppThemeFontsSize.l:
        return 18.0;
      case EnumAppThemeFontsSize.xl:
        return 20.0;
      case EnumAppThemeFontsSize.xxl:
        return 22.0;
      case EnumAppThemeFontsSize.xxxl:
        return 24.0;
      default:
        return 16.0;
    }
  }

  double getIconSize() {
    return (getFontSize() + 8);
  }

  TextStyle getFontTypography() {
    TextStyle _fontSet;
    TextStyle _fontSetWeb = GoogleFonts.montserrat();
    TextStyle _fontSetMobile = GoogleFonts.abel();

    if(kIsWeb) {
      _fontSet = _fontSetWeb;
    } else if(Platform.isAndroid){
      _fontSet = _fontSetMobile;
    } else if(Platform.isIOS){
      _fontSet = _fontSetMobile;
    } else {
      _fontSet = _fontSetWeb;
    }

    return _fontSet;
  }

  String getCurrentThemeText() {
    switch(enumParentBackground) {
      case EnumAppThemeParentBackground.light:
        return 'Light';
      case EnumAppThemeParentBackground.din:
        return 'Dim';
      case EnumAppThemeParentBackground.dark:
        return 'Dark';
    }

  }

  String getCurrentThemeTextByEnum(EnumAppThemeParentBackground enumParentBackground) {
    switch(enumParentBackground) {
      case EnumAppThemeParentBackground.light:
        return 'Light';
      case EnumAppThemeParentBackground.din:
        return 'Dim';
      case EnumAppThemeParentBackground.dark:
        return 'Dark';
    }

  }

  Color getTextColorOnThemeByEnum(EnumAppThemeParentBackground enumParentBackground) {
    switch(enumParentBackground) {
      case EnumAppThemeParentBackground.light:
        return ColorUtils.blackColor;
      case EnumAppThemeParentBackground.din:
        return ColorUtils.whiteColor;
      case EnumAppThemeParentBackground.dark:
        return ColorUtils.whiteColor;
    }

  }
}
