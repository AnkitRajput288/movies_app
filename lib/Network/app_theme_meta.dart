
import 'dart:io';

import 'package:deepika_assignment/Utils/app_enums.dart';
import 'package:deepika_assignment/Utils/color_utils.dart';
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
    return AppThemeMeta(EnumAppThemeParentBackground.LIGHT, EnumAppThemeChildColor.SKY_BLUE, EnumAppThemeFonts.ROBOTO, EnumAppThemeFontsSize.D);
  }

  double getFontSize() {
    switch(enumFontSize) {
      case EnumAppThemeFontsSize.D:
        return 16.0;
      case EnumAppThemeFontsSize.L:
        return 18.0;
      case EnumAppThemeFontsSize.XL:
        return 20.0;
      case EnumAppThemeFontsSize.XXL:
        return 22.0;
      case EnumAppThemeFontsSize.XXXL:
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
      case EnumAppThemeParentBackground.LIGHT:
        return 'Light';
        break;
      case EnumAppThemeParentBackground.DIM:
        return 'Dim';
        break;
      case EnumAppThemeParentBackground.DARK:
        return 'Dark';
        break;
    }

    return '';
  }

  String getCurrentThemeTextByEnum(EnumAppThemeParentBackground enumParentBackground) {
    switch(enumParentBackground) {
      case EnumAppThemeParentBackground.LIGHT:
        return 'Light';
        break;
      case EnumAppThemeParentBackground.DIM:
        return 'Dim';
        break;
      case EnumAppThemeParentBackground.DARK:
        return 'Dark';
        break;
    }

    return '';
  }

  Color getTextColorOnThemeByEnum(EnumAppThemeParentBackground enumParentBackground) {
    switch(enumParentBackground) {
      case EnumAppThemeParentBackground.LIGHT:
        return ColorUtils.blackColor;
        break;
      case EnumAppThemeParentBackground.DIM:
        return ColorUtils.whiteColor;
        break;
      case EnumAppThemeParentBackground.DARK:
        return ColorUtils.whiteColor;
        break;
    }

    return ColorUtils.whiteColor;
  }
}
