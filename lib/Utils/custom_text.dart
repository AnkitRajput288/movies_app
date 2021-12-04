/*
import 'package:deepika_assignment/Utils/theme_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomText {
  static Text getTextTEMP(BuildContext context, String? text) {
    var textAlign = TextAlign.left;
    var fontWeight = FontWeight.w600;
    var _textSize = 16.0;

    var _customTextStyle = getWhiteTextStyle()
        ?.copyWith(fontSize: _textSize, fontWeight: fontWeight);

    return _getTextCommon(text, textAlign, null, null, null, _customTextStyle);
  }

  static Text _getTextCommon(
      String? text,
      TextAlign? textAlign,
      TextOverflow? textOverflow,
      int? maxLines,

      TextStyle? textStyle,
      TextStyle? _customStyle) {
    return Text(text ?? '',
        textAlign: textAlign,
        overflow: textOverflow,
        maxLines: maxLines,
        style: textStyle ?? _customStyle);
  }

  */
/* Black color text method start ...*//*

  static Text textBlackColorBold(BuildContext context, String text,
      {double? textSize,
      TextStyle? textStyle,
      Color? textColor,
      TextAlign? textAlign,
      int? maxLines,
        FontWeight? fontWeight,
      TextOverflow? textOverflow}) {
    fontWeight ??= FontWeight.w600;

    var _textSize = 16.0;
    var _customTextStyle = getBlackTextStyle()?.copyWith(
        fontSize: _textSize, fontWeight: fontWeight, color: textColor);

    return _getTextCommon(
        text, textAlign, textOverflow, maxLines, textStyle, _customTextStyle);
  }

  static Text textBlackColorRegular(BuildContext context, String? text,
      {double? textSize,
      TextStyle? textStyle,
      Color? textColor,
      TextAlign? textAlign,

      int? maxLines,
      FontWeight? fontWeight,
      TextOverflow? textOverflow}) {
   fontWeight ?? FontWeight.w300;

    var _textSize = 16.0;
    var _customTextStyle = getBlackTextStyle()?.copyWith(
        fontSize: _textSize, fontWeight: fontWeight, color: textColor);

    return _getTextCommon(
        text, textAlign, textOverflow, maxLines, textStyle, _customTextStyle);
  }

  static Text textBlackColorBold20(BuildContext context, String text) =>
      textBlackColorBold(context, text, textSize: 20.0);

  static Text textBlackColorBold18(BuildContext context, String text) =>
      textBlackColorBold(context, text, textSize: 18.0);

  static Text textBlackColorBold16(BuildContext context, String text) =>
      textBlackColorBold(context, text, textSize: 16.0);

  static Text textBlackColorBold14(BuildContext context, String text) =>
      textBlackColorBold(context, text, textSize: 14.0);

  static Text textBlackColorBold12(BuildContext context, String text) =>
      textBlackColorBold(context, text, textSize: 12.0);

  static Text textBlackColorRegular20(BuildContext context, String text) =>
      textBlackColorRegular(context, text, textSize: 20.0);

  static Text textBlackColorRegular18(BuildContext context, String text) =>
      textBlackColorRegular(context, text, textSize: 18.0);

  static Text textBlackColorRegular16(BuildContext context, String text) =>
      textBlackColorRegular(context, text, textSize: 16.0);

  static Text textBlackColorRegular14(BuildContext context, String text) =>
      textBlackColorRegular(context, text, textSize: 14.0);

  static Text textBlackColorRegular12(BuildContext context, String text) =>
      textBlackColorRegular(context, text, textSize: 12.0);

  static Text textBlackColorRegular10(BuildContext context, String text) =>
      textBlackColorRegular(context, text, textSize: 10.0);

*/
/* Black color text method end ...*//*


  */
/* Light Black color text method start ...*//*

  static Text textLightBlackColorBold(BuildContext context, String text,
      {double? textSize,
      TextStyle? textStyle,
      Color? textColor,
      TextAlign? textAlign,
      int? maxLines,
        FontWeight? fontWeight,
      TextOverflow? textOverflow}) {
    textAlign ??= TextAlign.left;

    fontWeight ??= FontWeight.w600;
    var _textSize = 16.0;
    var _customTextStyle = getLightBlackTextStyle()?.copyWith(
        fontSize: _textSize, fontWeight: fontWeight, color: textColor);
    return _getTextCommon(
        text, textAlign, textOverflow, maxLines, textStyle, _customTextStyle);
  }

  static Text textLightBlackColorRegular(BuildContext context, String text,
      {double? textSize,
      TextStyle? textStyle,
      Color? textColor,
      TextAlign? textAlign,
      int? maxLines,
        FontWeight? fontWeight,
      TextOverflow? textOverflow}) {
    textAlign ??= TextAlign.left;

    fontWeight ??= FontWeight.w300;
    var _textSize = 16.0;
    var _customTextStyle = getLightBlackTextStyle()?.copyWith(
        fontSize: _textSize, fontWeight: fontWeight, color: textColor);
    return _getTextCommon(
        text, textAlign, textOverflow, maxLines, textStyle, _customTextStyle);
  }

  static Text textLightBlackColorBold18(BuildContext context, String text,
          {Color? textColor}) =>
      textLightBlackColorBold(context, text,
          textSize: 18.0, textColor: textColor);

  static Text textLightBlackColorBold16(BuildContext context, String text) =>
      textLightBlackColorBold(context, text, textSize: 16.0);

  static Text textLightBlackColorBold14(BuildContext context, String text) =>
      textLightBlackColorBold(context, text, textSize: 14.0);

  static Text textLightBlackColorRegular18(BuildContext context, String text) =>
      textLightBlackColorRegular(context, text, textSize: 18.0);

  static Text textLightBlackColorRegular16(BuildContext context, String text) =>
      textLightBlackColorRegular(context, text, textSize: 16.0);

  static Text textLightBlackColorRegular14(BuildContext context, String text) =>
      textLightBlackColorRegular(context, text, textSize: 14.0);

  static Text textLightBlackColorRegular12(BuildContext context, String text,
          {Color? color}) =>
      textLightBlackColorRegular(context, text,
          textSize: 12.0, textColor: color);

  static Text textLightBlackColorRegular10(BuildContext context, String text) =>
      textLightBlackColorRegular(context, text, textSize: 10.0);

  */
/* Light Black color text method end ...*//*


  */
/* Grey color text method start ...*//*

  static Text textGreyColorBold(BuildContext context, String text,
      {double? textSize,
      TextStyle? textStyle,
      Color? textColor,
      TextAlign? textAlign,
      int? maxLines,
        FontWeight? fontWeight,
      TextOverflow? textOverflow}) {
    textAlign ??= TextAlign.left;
    fontWeight ??= FontWeight.w600;

    var _textSize = 16.0;
    var _customTextStyle = getGreyTextStyle()?.copyWith(
        fontSize: _textSize, fontWeight: fontWeight, color: textColor);
    return _getTextCommon(
        text, textAlign, textOverflow, maxLines, textStyle, _customTextStyle);
  }

  static Text textGreyColorRegular(BuildContext context, String? text,
      {double? textSize,
      TextStyle? textStyle,
      Color? textColor,
      TextAlign? textAlign,
      int? maxLines,
        FontWeight? fontWeight,
      TextOverflow? textOverflow}) {
    textAlign ??= TextAlign.left;

    fontWeight ??= FontWeight.w300;

    var _textSize = 16.0;
    var _customTextStyle = getGreyTextStyle()?.copyWith(
        fontSize: _textSize, fontWeight: fontWeight, color: textColor);
    return _getTextCommon(
        text, textAlign, textOverflow, maxLines, textStyle, _customTextStyle);
  }

  static Text textGreyColorBold20(BuildContext context, String text) =>
      textGreyColorBold(context, text, textSize: 20.0);

  static Text textGreyColorBold18(BuildContext context, String text) =>
      textGreyColorBold(context, text, textSize: 18.0);

  static Text textGreyColorBold16(BuildContext context, String text) =>
      textGreyColorBold(context, text, textSize: 16.0);

  static Text textGreyColorBold14(BuildContext context, String text) =>
      textGreyColorBold(context, text, textSize: 14.0);

  static Text textGreyColorBold12(BuildContext context, String text) =>
      textGreyColorBold(context, text, textSize: 12.0);

  static Text textGreyColorRegular20(BuildContext context, String text) =>
      textGreyColorRegular(context, text, textSize: 20.0);

  static Text textGreyColorRegular18(BuildContext context, String text) =>
      textGreyColorRegular(context, text, textSize: 18.0);

  static Text textGreyColorRegular16(BuildContext context, String text) =>
      textGreyColorRegular(context, text, textSize: 16.0);

  static Text textGreyColorRegular12(BuildContext context, String text) =>
      textGreyColorRegular(context, text, textSize: 12.0);

  static Text textGreyColorRegular10(BuildContext context, String text) =>
      textGreyColorRegular(context, text, textSize: 10.0);

  */
/* Grey color text method end ...*//*


  */
/* Dark Blue color text method start ...*//*

  static Text textDarkBlueColorBold(BuildContext context, String? text,
      {double? textSize,
      TextStyle? textStyle,
      Color? textColor,
      TextAlign? textAlign,
      int? maxLines,
        FontWeight? fontWeight,
      TextOverflow? textOverflow}) {
    textAlign ??= TextAlign.left;

    fontWeight ??= FontWeight.w600;

    var _textSize = 16.0;
    var _customTextStyle = getDarkBlueTextStyle()?.copyWith(
        fontSize: _textSize, fontWeight: fontWeight, color: textColor);
    return _getTextCommon(
        text, textAlign, textOverflow, maxLines, textStyle, _customTextStyle);
  }

  static Text textDarkBlueColorRegular(BuildContext context, String text,
      {double? textSize,
      TextStyle? textStyle,
      Color? textColor,
      TextAlign? textAlign,
      int? maxLines,
        FontWeight? fontWeight,
      TextOverflow? textOverflow}) {
    textAlign ??= TextAlign.left;

    fontWeight ??= FontWeight.w300;

    var _textSize = 16.0;
    var _customTextStyle = getDarkBlueTextStyle()?.copyWith(
        fontSize: _textSize, fontWeight: fontWeight, color: textColor);
    return _getTextCommon(
        text, textAlign, textOverflow, maxLines, textStyle, _customTextStyle);
  }

  static Text textDarkBlueColorBold20(BuildContext context, String text) =>
      textDarkBlueColorBold(context, text, textSize: 20.0);

  static Text textDarkBlueColorBold18(BuildContext context, String text) =>
      textDarkBlueColorBold(context, text, textSize: 18.0);

  static Text textDarkBlueColorBold16(BuildContext context, String text) =>
      textDarkBlueColorBold(context, text, textSize: 16.0);

  static Text textDarkBlueColorBold14(BuildContext context, String text) =>
      textDarkBlueColorBold(context, text, textSize: 14.0);

  static Text textDarkBlueColorBold12(BuildContext context, String text) =>
      textDarkBlueColorBold(context, text, textSize: 12.0);

  static Text textDarkBlueColorRegular10(BuildContext context, String text) =>
      textDarkBlueColorRegular(context, text, textSize: 10.0);

  static Text textDarkBlueColorRegular12(BuildContext context, String text) =>
      textDarkBlueColorRegular(context, text, textSize: 12.0);

  static Text textDarkBlueColorRegular20(BuildContext context, String text) =>
      textDarkBlueColorRegular(context, text, textSize: 20.0);

  static Text textDarkBlueColorRegular18(BuildContext context, String text) =>
      textDarkBlueColorRegular(context, text, textSize: 18.0);

  static Text textDarkBlueColorRegular16(BuildContext context, String text) =>
      textDarkBlueColorRegular(context, text, textSize: 16.0);

  static Text textDarkBlueColorRegular14(BuildContext context, String text,
          {TextStyle? textStyle,
          Color? textColor,
          TextAlign? textAlign,
          int? maxLines,
          TextOverflow? textOverflow}) =>
      textDarkBlueColorRegular(context, text,
          textSize: 14.0,
          textStyle: textStyle,
          textColor: textColor,
          textAlign: textAlign,
          maxLines: maxLines,
          textOverflow: textOverflow);

  */
/* Dark Blue color text method end ...*//*


  */
/* Green color text method start ...*//*

  static Text textGreenColorBold(BuildContext context, String text,
      {double? textSize,
      TextStyle? textStyle,
      Color? textColor,
      TextAlign? textAlign,
      int? maxLines,
        FontWeight? fontWeight,
      TextOverflow? textOverflow}) {
    textAlign ??= TextAlign.left;

    fontWeight ??= FontWeight.w600;

    var _textSize = 16.0;
    var _customTextStyle = getGreenTextStyle()?.copyWith(
        fontSize: _textSize, fontWeight: fontWeight, color: textColor);
    return _getTextCommon(
        text, textAlign, textOverflow, maxLines, textStyle, _customTextStyle);
  }

  static Text textGreenColorRegular(BuildContext context, String text,
      {double? textSize,
      TextStyle? textStyle,
      Color? textColor,
      TextAlign? textAlign,
      int? maxLines,
        FontWeight? fontWeight,
      TextOverflow? textOverflow}) {
    textAlign ??= TextAlign.left;

    fontWeight ??= FontWeight.w300;

    var _textSize = 16.0;
    var _customTextStyle = getGreenTextStyle()?.copyWith(
        fontSize: _textSize, fontWeight: fontWeight, color: textColor);
    return _getTextCommon(
        text, textAlign, textOverflow, maxLines, textStyle, _customTextStyle);
  }

  static Text textGreenColorBold20(BuildContext context, String text) =>
      textGreenColorBold(context, text, textSize: 20.0);

  static Text textGreenColorBold18(BuildContext context, String text) =>
      textGreenColorBold(context, text, textSize: 18.0);

  static Text textGreenColorBold16(BuildContext context, String text) =>
      textGreenColorBold(context, text, textSize: 16.0);

  static Text textGreenColorRegular20(BuildContext context, String text) =>
      textGreenColorRegular(context, text, textSize: 20.0);

  static Text textGreenColorRegular18(BuildContext context, String text) =>
      textGreenColorRegular(context, text, textSize: 18.0);

  static Text textGreenColorRegular16(BuildContext context, String text) =>
      textGreenColorRegular(context, text, textSize: 16.0);

  static Text textGreenColorRegular12(BuildContext context, String text) =>
      textGreenColorRegular(context, text, textSize: 12.0);

  */
/* Green color text method end ...*//*

  */
/* Green color web text method end ...*//*


  static Text textGreenColorWebBold32(BuildContext context, String text) =>
      textGreenColorBold(context, text, textSize: 32.0);

  static Text textGreenColorWebBold24(BuildContext context, String text) =>
      textGreenColorBold(context, text, textSize: 24.0);

  static Text textGreenColorWebBold20(BuildContext context, String text) =>
      textGreenColorBold(context, text, textSize: 20.0);

  static Text textGreenColorWebBold18(BuildContext context, String text) =>
      textGreenColorBold(context, text, textSize: 18.0);

  static Text textGreenColorWebBold16(BuildContext context, String text) =>
      textGreenColorBold(context, text, textSize: 16.0);

  static Text textGreenColorWebRegular20(BuildContext context, String text) =>
      textGreenColorRegular(context, text, textSize: 20.0);

  static Text textGreenColorWebRegular18(BuildContext context, String text) =>
      textGreenColorRegular(context, text, textSize: 18.0);

  static Text textGreenColorWebRegular16(BuildContext context, String text) =>
      textGreenColorRegular(context, text, textSize: 16.0);

  */
/* Sky Blue color text method start ...*//*

  static Text textSkyBlueColorBold(BuildContext context, String text,
      {double? textSize,
      TextStyle? textStyle,
      Color? textColor,
      TextAlign? textAlign,
      int? maxLines,
        FontWeight? fontWeight,
      TextOverflow? textOverflow}) {
    textAlign ??= TextAlign.left;

    var _fontWeight = FontWeight.w600;
    var _textSize = 16.0;
    var _customTextStyle = getSkyBlueTextStyle()?.copyWith(
        fontSize: _textSize, fontWeight: _fontWeight, color: textColor);
    return _getTextCommon(
        text, textAlign, textOverflow, maxLines, textStyle, _customTextStyle);
  }

  static Text textSkyBlueColorRegular(BuildContext context, String text,
      {double? textSize,
      TextStyle? textStyle,
      Color? textColor,
      TextAlign? textAlign,
      int? maxLines,
        FontWeight? fontWeight,
      TextOverflow? textOverflow}) {
    textAlign ??= TextAlign.left;

    var _fontWeight = FontWeight.w300;
    var _textSize = 16.0;
    var _customTextStyle = getSkyBlueTextStyle()?.copyWith(
        fontSize: _textSize, fontWeight: _fontWeight, color: textColor);
    return _getTextCommon(
        text, textAlign, textOverflow, maxLines, textStyle, _customTextStyle);
  }

  static Text textSkyBlueColorBold20(BuildContext context, String text) =>
      textSkyBlueColorBold(context, text, textSize: 20.0);

  static Text textSkyBlueColorBold18(BuildContext context, String text) =>
      textSkyBlueColorBold(context, text, textSize: 18.0);

  static Text textSkyBlueColorBold16(BuildContext context, String text) =>
      textSkyBlueColorBold(context, text, textSize: 16.0);

  static Text textSkyBlueColorRegular20(BuildContext context, String text) =>
      textSkyBlueColorRegular(context, text, textSize: 20.0);

  static Text textSkyBlueColorRegular18(BuildContext context, String text) =>
      textSkyBlueColorRegular(context, text, textSize: 18.0);

  static Text textSkyBlueColorRegular16(BuildContext context, String text) =>
      textSkyBlueColorRegular(context, text, textSize: 16.0);

  */
/* Sky Blue color text method end ...*//*

  */
/* Sky Blue color text method start ...*//*

  static Text textSkyBlueColorWebBold26(BuildContext context, String text) =>
      textSkyBlueColorBold(context, text, textSize: 26.0);

  static Text textSkyBlueColorWebBold24(BuildContext context, String text) =>
      textSkyBlueColorBold(context, text, textSize: 24.0);

  static Text textSkyBlueColorWebBold20(BuildContext context, String text) =>
      textSkyBlueColorBold(context, text, textSize: 20.0);

  static Text textSkyBlueColorWebBold18(BuildContext context, String text) =>
      textSkyBlueColorBold(context, text, textSize: 18.0);

  static Text textSkyBlueColorWebBold16(BuildContext context, String text) =>
      textSkyBlueColorBold(context, text, textSize: 16.0);

  static Text textSkyBlueColorWebRegular20(BuildContext context, String text) =>
      textSkyBlueColorRegular(context, text, textSize: 20.0);

  static Text textSkyBlueColorWebRegular18(BuildContext context, String text) =>
      textSkyBlueColorRegular(context, text, textSize: 18.0);

  static Text textSkyBlueColorWebRegular16(BuildContext context, String text) =>
      textSkyBlueColorRegular(context, text, textSize: 16.0);

  */
/* White color text method start ...*//*

  static Text textWhiteColorBold(BuildContext context, String text,
      {double? textSize,
      TextStyle? textStyle,
      Color? textColor,
      TextAlign? textAlign,
      int? maxLines,
      TextOverflow? textOverflow,
      FontWeight? fontWeight}) {
    textAlign ??= TextAlign.left;

    fontWeight ??= FontWeight.w600;
    var _textSize = 16.0;
    var _customTextStyle = getWhiteTextStyle()?.copyWith(
        fontSize: _textSize, fontWeight: fontWeight, color: textColor);
    return _getTextCommon(
        text, textAlign, textOverflow, maxLines, textStyle, _customTextStyle);
  }

  static Text textWhiteColorRegular(BuildContext context, String text,
      {double? textSize,
       double? height,
      TextStyle? textStyle,
      Color? textColor,
      TextAlign? textAlign,
      int? maxLines,
      TextOverflow? textOverflow,
      FontWeight? fontWeight}) {
    textAlign ??= TextAlign.left;
    fontWeight ??= FontWeight.w300;

    var _textSize = 16.0;
    var _customTextStyle = getWhiteTextStyle()?.copyWith(
        fontSize: _textSize, fontWeight: fontWeight, color: textColor, height: height);
    return _getTextCommon(
        text, textAlign, textOverflow, maxLines, textStyle, _customTextStyle, );
  }

  static Text textWhiteColorBold32(BuildContext context, String text) =>
      textWhiteColorBold(context, text, textSize: 32.0);

  static Text textWhiteColorBold20(BuildContext context, String text) =>
      textWhiteColorBold(context, text, textSize: 20.0);
///Temp
  static Text textWhiteColorBold24(BuildContext context, String text) =>
      textWhiteColorBold(context, text, textSize: 24.0);

  static Text textWhiteColorBold18(BuildContext context, String text) =>
      textWhiteColorBold(context, text, textSize: 18.0);

  static Text textWhiteColorBold16(BuildContext context, String text) =>
      textWhiteColorBold(context, text, textSize: 16.0, maxLines: 3);

  static Text textWhiteColorBold14(BuildContext context, String text,
          {TextAlign? textAlign}) =>
      textWhiteColorBold(context, text, textSize: 14.0, textAlign: textAlign);

  static Text textWhiteColorRegular20(BuildContext context, String text) =>
      textWhiteColorRegular(context, text, textSize: 20.0);

  static Text textWhiteColorRegular22(BuildContext context, String text) =>
      textWhiteColorRegular(context, text, textSize: 22.0);

  static Text textWhiteColorRegular18(BuildContext context, String text) =>
      textWhiteColorRegular(context, text, textSize: 18.0);

  static Text textWhiteColorRegular16(BuildContext context, String text) =>
      textWhiteColorRegular(context, text, textSize: 16.0);

  static Text textWhiteColorRegular14(BuildContext context, String text) =>
      textWhiteColorRegular(context, text, textSize: 14.0);

  static Text textWhiteColorRegular12(BuildContext context, String text) =>
      textWhiteColorRegular(context, text, textSize: 12.0);

  static Text textWhiteColorRegular10(BuildContext context, String text) =>
      textWhiteColorRegular(context, text, textSize: 10.0);

  static Text textWhiteColorRegularCommon(BuildContext context, String text,
      {double? textSize,
       double? height,
      TextStyle? textStyle,
      Color? textColor,
      TextAlign? textAlign,
      int? maxLines,
      TextOverflow? textOverflow}) {
    return textWhiteColorRegular(context, text,
        textSize: textSize,
        textStyle: textStyle,
        textColor: textColor,
        textAlign: textAlign,
        maxLines: maxLines,
        height: height,

        textOverflow: textOverflow);
  }

  */
/* White color text method end ...*//*


  */
/* Different text styles used according to color scheme...*//*

  static TextStyle? getBlackTextStyle() => ThemeUtils.getTextStyleHeading1();

  static TextStyle? getLightBlackTextStyle() =>
      ThemeUtils.getTextStyleHeading2();

  static TextStyle? getGreyTextStyle() => ThemeUtils.getTextStyleHeading3();

  static TextStyle? getDarkBlueTextStyle() => ThemeUtils.getTextStyleHeading4();

  static TextStyle? getGreenTextStyle() => ThemeUtils.getTextStyleHeading5();

  static TextStyle? getSkyBlueTextStyle() => ThemeUtils.getTextStyleHeading6();

  static TextStyle? getWhiteTextStyle() => ThemeUtils.getTextStyleBodyText1();

  static TextStyle? getBlackTextStyleForTextField({double? textSize = 14.0}) =>
      ThemeUtils.getTextStyleHeading1()?.copyWith(fontSize: textSize);

  static TextStyle? getBlackTextStyleForDropDown({double? textSize = 14.0}) =>
      ThemeUtils.getTextStyleHeading1()?.copyWith(fontSize: textSize,);
}
*/
