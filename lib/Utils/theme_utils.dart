import 'dart:ui';

import '../Network/app_theme_meta.dart';
import 'package:flutter/material.dart';
import 'color_utils.dart';
import 'app_enums.dart';

class ThemeUtils {
  static ThemeUtils instance = ThemeUtils();

  AppThemeMeta? _themeModel;

  ///
  /// Parent Theme Database Related Properties - START
  ///
  Brightness? brightness;
  Color? scaffoldBackgroundColor;
  Color? backgroundColor;
  Color? cardColor;
  Color? dialogBackgroundColor;
  Color? textBlackColor;
  Color? textLightBlackColor;
  Color? textGreyColor;
  Color? textDarkBlueColor;
  Color? textGreenColor;
  Color? textSkyBlueColor;
  Color? textWhiteColor;
  Color? textColorBody;
  Color? textColorSubTitle;
  Color? cursorColor;
  Color? cardCustomColor1;
  Color? searchCustomColor1;
  Color? textCustomColorHeading1;

  ///
  /// Parent Theme Database Related Properties - END
  ///

  ///
  /// Child Color Theme Database Related Properties - START
  ///
  Color primaryColor = ColorUtils.primaryColor;
  Color? shadowColor;
  Color? bottomAppBarColor;
  Color? focusColor;
  Color? hoverColor;
  Color? highlightColor;
  Color? splashColor;
  Color? disabledColor;
  Color? buttonColor;
  Color? sliderActiveColor;
  Color? sliderInActiveColor;

  ///
  /// Child Color Theme Database Related Properties - END
  ///

  ///
  /// Common Theme Database Related Properties - START
  ///
  Color? dividerColor;
  Color? hintColor;
  Color? errorColor;
  TextStyle? textStyleHeading1;
  TextStyle? textStyleHeading2;
  TextStyle? textStyleHeading3;
  TextStyle? textStyleHeading4;
  TextStyle? textStyleHeading5;
  TextStyle? textStyleHeading6;
  TextStyle? textStyleBodyText1;
  TextStyle? textStyleBody;
  TextStyle? textStyleSubTitle;
  TextButtonThemeData? textButtonThemeData;
  OutlinedButtonThemeData? outlinedButtonThemeData;
  ElevatedButtonThemeData? elevatedButtonThemeData;
  FloatingActionButtonThemeData? floatingActionButtonThemeData;

  ///
  /// Common Theme Database Related Properties - START
  ///

  ///
  /// Font Theme Database Related Properties - START
  /// 
  double? fontSize;
  double? iconSize;
  TextStyle? _fontSet;
  ///
  /// Font Theme Database Related Properties - END
  ///
  
  void initialize(AppThemeMeta _themeModel) {
    this._themeModel = _themeModel;
    _setFontProperties();
    _setParentThemeData();
    _setChildColorThemeData();
    _setCommonThemeData();
  }

  void _setFontProperties() {

    if(_themeModel != null) {
      _fontSet = _themeModel?.getFontTypography();
      fontSize = _themeModel?.getFontSize();
      iconSize = _themeModel?.getIconSize();
    }
  }
  
  void _setParentThemeData() {
    switch (_themeModel?.enumParentBackground) {
      case EnumAppThemeParentBackground.light:
        var _textBlackColor = ColorUtils.textHeadingBlackColor;
        var _textLightBlackColor = ColorUtils.textSubHeadingCharcoalBlackColor;
        var _textGreyColor = ColorUtils.greyTextColor;
        var _textDarkBlueColor = ColorUtils.darkBlueTextColor;
        var _textGreenColor = ColorUtils.greenTextColor;
        var _textSkyBlueColor = ColorUtils.skyBlueTextColor;
        var _textWhiteColor = ColorUtils.whiteColor;
        var _commonBackgroundColor = ColorUtils.whiteColor;
        var _commonCardBackgroundColor = ColorUtils.cardLightColor;
        var _cardCustomColor = ColorUtils.cardCustomLightColor;
        var _searchCustomColor = ColorUtils.searchCustomLightColor;
        var _textCustomColorHeading1 = ColorUtils.textCustomLightColorHeading1;
        var _scaffoldBackgroundColor = ColorUtils.scaffoldBgColor;

        brightness = Brightness.light;
        scaffoldBackgroundColor = _scaffoldBackgroundColor;
        backgroundColor = _commonBackgroundColor;
        cardColor = _commonCardBackgroundColor;
        dialogBackgroundColor = _commonBackgroundColor;
        textBlackColor = _textBlackColor;
        textLightBlackColor = _textLightBlackColor;
        textGreyColor = _textGreyColor;
        textDarkBlueColor = _textDarkBlueColor;
        textGreenColor = _textGreenColor;
        textSkyBlueColor = _textSkyBlueColor;
        textWhiteColor = _textWhiteColor;
        textColorSubTitle = ColorUtils.greyColor;
        cursorColor = _textLightBlackColor;
        cardCustomColor1 = _cardCustomColor;
        searchCustomColor1 = _searchCustomColor;
        textCustomColorHeading1 = _textCustomColorHeading1;

        break;
      case EnumAppThemeParentBackground.din:
        var _commonTextColor = ColorUtils.textMainCustomDimColor;
        var _commonBackgroundColor = ColorUtils.backgroundColorDark;
        var _commonCardBackgroundColor = ColorUtils.cardDimColor;
        var _cardCustomColor = ColorUtils.cardCustomDimColor;
        var _searchCustomColor = ColorUtils.searchCustomDimColor;
        var _textCustomColorHeading1 = ColorUtils.textCustomDimColorHeading1;

        brightness = Brightness.dark;
        scaffoldBackgroundColor = _commonBackgroundColor;
        backgroundColor = _commonBackgroundColor;
        cardColor = _commonCardBackgroundColor;
        dialogBackgroundColor = _commonBackgroundColor;
        textBlackColor = _commonTextColor;
        textColorBody = _commonTextColor;
        textColorSubTitle = ColorUtils.greyColor;
        cursorColor = _commonTextColor;
        cardCustomColor1 = _cardCustomColor;
        searchCustomColor1 = _searchCustomColor;
        textCustomColorHeading1 = _textCustomColorHeading1;

        break;
      case EnumAppThemeParentBackground.dark:
        var _commonTextColor = ColorUtils.textMainCustomDarkColor;
        var _commonBackgroundColor = ColorUtils.blackColor;
        var _commonCardBackgroundColor = ColorUtils.cardDarkColor;
        var _cardCustomColor = ColorUtils.cardCustomDarkColor;
        var _searchCustomColor = ColorUtils.searchCustomDarkColor;
        var _textCustomColorHeading1 = ColorUtils.textCustomDarkColorHeading1;

        brightness = Brightness.dark;
        scaffoldBackgroundColor = _commonBackgroundColor;
        backgroundColor = _commonBackgroundColor;
        cardColor = _commonCardBackgroundColor;
        dialogBackgroundColor = _commonBackgroundColor;
        textBlackColor = _commonTextColor;
        textColorBody = _commonTextColor;
        textColorSubTitle = ColorUtils.greyColor;
        cursorColor = _commonTextColor;
        cardCustomColor1 = _cardCustomColor;
        searchCustomColor1 = _searchCustomColor;
        textCustomColorHeading1 = _textCustomColorHeading1;

        break;
    }
  }

  void _setChildColorThemeData() {
    switch (_themeModel?.enumChildColor) {
      case EnumAppThemeChildColor.skyBlue:
        _setChildColorThemeDataValues(ColorUtils.themeChildColorSkyBlue);
        break;
      case EnumAppThemeChildColor.darkYellow:
        _setChildColorThemeDataValues(ColorUtils.themeChildColorDarkYellow);
        break;
      case EnumAppThemeChildColor.flowerRed:
        _setChildColorThemeDataValues(ColorUtils.themeChildColorFlowerRed);
        break;
      case EnumAppThemeChildColor.octopusViolet:
        _setChildColorThemeDataValues(ColorUtils.themeChildColorOctopusViolet);
        break;
      case EnumAppThemeChildColor.fireOrange:
        _setChildColorThemeDataValues(ColorUtils.themeChildColorFireOrange);
        break;
      case EnumAppThemeChildColor.guavaGreen:
        _setChildColorThemeDataValues(ColorUtils.themeChildColorGuavaGreen);
        break;
    }
  }

  void _setChildColorThemeDataValues(Color _setThemeColor) {
    primaryColor = _setThemeColor;
    shadowColor = _setThemeColor.withOpacity(0.7);
    bottomAppBarColor = _setThemeColor;
    focusColor = _setThemeColor;
    hoverColor = _setThemeColor.withOpacity(0.1);
    highlightColor = _setThemeColor.withOpacity(0.8);
    splashColor = _setThemeColor.withOpacity(0.8);
    disabledColor = _setThemeColor.withOpacity(0.5);
    buttonColor = _setThemeColor;
    sliderActiveColor = _setThemeColor;
    sliderInActiveColor = ColorUtils.dividerColor;
  }

  void _setCommonThemeData() {
    dividerColor = ColorUtils.dividerColor;
    hintColor = ColorUtils.dividerColor;
    errorColor = ColorUtils.redColor;
    textStyleHeading1 = getTextStyle(textBlackColor);
    textStyleHeading2 = getTextStyle(textLightBlackColor);
    textStyleHeading3 = getTextStyle(textGreyColor);
    textStyleHeading4 = getTextStyle(textDarkBlueColor);
    textStyleHeading5 = getTextStyle(textGreenColor);
    textStyleHeading6 = getTextStyle(textSkyBlueColor);
    textStyleBodyText1 = getTextStyle(textWhiteColor);
    textStyleSubTitle = getTextStyle(textColorSubTitle);
    textButtonThemeData = TextButtonThemeData(style: _getTextButtonStyle());
    outlinedButtonThemeData =
        OutlinedButtonThemeData(style: _getOutlineButtonStyle());
    elevatedButtonThemeData =
        ElevatedButtonThemeData(style: _getElevatedButtonStyle());
    floatingActionButtonThemeData = const FloatingActionButtonThemeData();
  }

  TextStyle getTextStyle(Color? _textColor) {
    return TextStyle(
      color: _textColor,
      fontFamily: _fontSet?.fontFamily,
      fontStyle: _fontSet?.fontStyle,
      fontSize: fontSize
    );
  }

  ButtonStyle _getTextButtonStyle() {
    return OutlinedButton.styleFrom(
      primary: textBlackColor,
      backgroundColor: primaryColor,
      elevation: 2.0,
      shadowColor: shadowColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: primaryColor)),
    );
  }

  ButtonStyle _getOutlineButtonStyle() {
    return TextButton.styleFrom(
      primary: textBlackColor,
      backgroundColor: primaryColor,
      elevation: 2.0,
      shadowColor: shadowColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: primaryColor)),
    );
  }

  ButtonStyle _getElevatedButtonStyle() {
    return ElevatedButton.styleFrom(
      primary: primaryColor,
      elevation: 2.0,
      shadowColor: shadowColor,

      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: primaryColor)),
    );
  }

  /// Custom Colors
  static Color? getCardCustomColor1() => ThemeUtils.instance.cardCustomColor1;
  static Color? getSearchCustomColor1() => ThemeUtils.instance.searchCustomColor1;
  static Color? getTextCustomHeadingColor1() => ThemeUtils.instance.textCustomColorHeading1;

  /// Size Related Methods
  static double? getTextSize() => ThemeUtils.instance.fontSize;
  static double? getIconSize() => ThemeUtils.instance.iconSize;

  /// Support Methods
  static String? getCurrentSetThemeTextByEnum(EnumAppThemeParentBackground enumParentBackground) => ThemeUtils.instance._themeModel?.getCurrentThemeTextByEnum(enumParentBackground);
  static Color? getTextColorOnThemeByEnum(EnumAppThemeParentBackground enumParentBackground) => ThemeUtils.instance._themeModel?.getTextColorOnThemeByEnum(enumParentBackground);

  static TextStyle? getTextStyleHeading1() => ThemeUtils.instance.textStyleHeading1;
  static TextStyle? getTextStyleHeading2() => ThemeUtils.instance.textStyleHeading2;
  static TextStyle? getTextStyleHeading3() => ThemeUtils.instance.textStyleHeading3;
  static TextStyle? getTextStyleHeading4() => ThemeUtils.instance.textStyleHeading4;
  static TextStyle? getTextStyleHeading5() => ThemeUtils.instance.textStyleHeading5;
  static TextStyle? getTextStyleHeading6() => ThemeUtils.instance.textStyleHeading6;
  static TextStyle? getTextStyleBodyText1() => ThemeUtils.instance.textStyleBodyText1;

}
