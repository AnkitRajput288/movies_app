import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

import 'exception_utils.dart';

class ColorUtils {
  static final instance = ColorUtils();

  ColorUtils() {
    ExceptionUtils.instance.throwCanNotCreateObjectSingletonInstance();
  }

  static Color skyBlueTextColor = Color(UtilColors.hexToInt('55b1e2'));
  static Color textHeadingBlackColor = Color(UtilColors.hexToInt('212529'));
  static Color textSubHeadingCharcoalBlackColor = Color(UtilColors.hexToInt('414042'));
  static Color greyTextColor = Color(UtilColors.hexToInt('6d6e71'));
  static Color darkBlueTextColor = Color(UtilColors.hexToInt('0e5fc1'));
  static Color greenTextColor = Color(UtilColors.hexToInt('0a8943'));

  static Color greyIconColor = Color(UtilColors.hexToInt('AAACAE'));

  static Color scaffoldBgColor = Color(UtilColors.hexToInt('f1f2f2'));

  static Color primaryColor = Color(UtilColors.hexToInt('1ACB84'));

  static Color greyColor = Color(UtilColors.hexToInt('707070'));
  static Color darkGreyShimmerColor = Color(UtilColors.hexToInt('707070'));

  static Color whiteColor = Color(UtilColors.hexToInt('FFFFFF'));
  static Color backgroundColorDark = Color(UtilColors.hexToInt('191919'));

  static Color cardLightColor = Color(UtilColors.hexToInt('FFFFFF'));
  static Color cardDimColor = Color(UtilColors.hexToInt('212121'));
  static Color cardDarkColor = Color(UtilColors.hexToInt('070707'));


  ///
  /// Custom Colors - START
  ///
  static Color cardCustomLightColor = Color(UtilColors.hexToInt('f7f9fa'));
  static Color cardCustomDimColor = Color(UtilColors.hexToInt('192734'));
  static Color cardCustomDarkColor = Color(UtilColors.hexToInt('15181c'));

  static Color searchCustomLightColor = Color(UtilColors.hexToInt('ebeef0'));
  static Color searchCustomDimColor = Color(UtilColors.hexToInt('253341'));
  static Color searchCustomDarkColor = Color(UtilColors.hexToInt('202327'));

  static Color textCustomLightColorHeading1 = Color(UtilColors.hexToInt('5B7083'));
  static Color textCustomDimColorHeading1 = Color(UtilColors.hexToInt('8899A6'));
  static Color textCustomDarkColorHeading1 = Color(UtilColors.hexToInt('6E767D'));

  static Color textMainCustomLightColor = Color(UtilColors.hexToInt('0F1419'));
  static Color textMainCustomDimColor = Color(UtilColors.hexToInt('FFFFFF'));
  static Color textMainCustomDarkColor = Color(UtilColors.hexToInt('D9D9D9'));

  ///
  /// Custom Colors - END
  ///


  /* black color */
  static Color blackColor = Color(UtilColors.hexToInt('000000'));

  /* red color (primary color) */
  static Color redColor = Color(UtilColors.hexToInt('EC3832'));

  static Color dividerColor = Color(UtilColors.hexToInt('E0E0E0'));

  /* dialog blue color */
  static Color dialogBlueColorDark = Color(UtilColors.hexToInt('2760bb'));


  // THEME COLORS - Child
  static Color themeChildColorSkyBlue = Color(UtilColors.hexToInt('4c9eeb'));
  static Color themeChildColorDarkYellow = Color(UtilColors.hexToInt('f3b045'));
  static Color themeChildColorFlowerRed = Color(UtilColors.hexToInt('ce3a5f'));
  static Color themeChildColorOctopusViolet = Color(UtilColors.hexToInt('704bba'));
  static Color themeChildColorFireOrange = Color(UtilColors.hexToInt('e26737'));
  static Color themeChildColorGuavaGreen = Color(UtilColors.hexToInt('5abc6e'));

  // Random Color Generator - Ankit Code - Start
  final List<Color> circleColors = [
    const Color(0xFFedb7b7),
    const Color(0xFFffe0fb),
    const Color(0xFFff6f61),
    const Color(0xFFfffebb),
    const Color(0xFFff0080),
    const Color(0xFF65af44),
    const Color(0xFFc7afd0),
    const Color(0xFFcccccc),
    const Color(0xFF0cc375),
    const Color(0xFF00C5CD),
    const Color(0xFF00FFCC),
    const Color(0xFF20B2AA),
    const Color(0xFF8E236B),
    const Color(0xFFBFEFFF),
    const Color(0xFFC0D9D9),
    const Color(0xFFC77826),
    const Color(0xFFCAE1FF),
    const Color(0xFFE6E8FA),
    const Color(0xFFEAB5C5),
  ];

  final List<Color> genreColors = [
    const Color(0xFFef4746),
    const Color(0xFF435849),
    const Color(0xFFffc803),
    const Color(0xFF867c71),
    const Color(0xFFd3ccc5),
    const Color(0xFFd8c493),
    const Color(0xFFb5b0b0),
    const Color(0xFFbda4a3),
    const Color(0xFF272621),
    const Color(0xFF7c7e70),
    const Color(0xFFa8c1c5),
    const Color(0xFF363636),
    const Color(0xFF262c3a),
    const Color(0xFFd2c1a2),
    const Color(0xFF97958b),
    const Color(0xFFae5c46),
    const Color(0xFF90757a),
    const Color(0xFF214948),
    const Color(0xFFd3cdbd),
    const Color(0xFFe5a5ad),
    const Color(0xFFbebab8),
    const Color(0xFFeea3bd),
    const Color(0xFF78795e),
    const Color(0xFF8f432e),
    const Color(0xFF623722),
    const Color(0xFFd98f70),
    const Color(0xFFf9c01b),
    const Color(0xFFcec34f),
    const Color(0xFF5d7d49),
    const Color(0xFFbbb9b6),
    const Color(0xFF9d735e),
    const Color(0xFFb38a74),
    const Color(0xFFbfada9),
    const Color(0xFF847151),
    const Color(0xFFc1b9b2),
    const Color(0xFFcdb49e),
    const Color(0xFF263f55),
    const Color(0xFFb8c7ce),
    const Color(0xFF9e8556),
    const Color(0xFF767b74),
    const Color(0xFFa6b0b1),
    const Color(0xFF364648),
    const Color(0xFF5d4610),
    const Color(0xFFafaca2),
    const Color(0xFF5c5c5c),
    const Color(0xFFe2c4ce),
    const Color(0xFFebb7a1),
    const Color(0xFF3d768a),
    const Color(0xFFfe83a6),
    const Color(0xFFaa7b8b),
    const Color(0xFFdbc3b4),
    const Color(0xFFcfa894),
    const Color(0xFF9a6a44),
    const Color(0xFFdac4a9),
    const Color(0xFFc2c2c2),
    const Color(0xFF362608),
    const Color(0xFFbdb0a5),
    const Color(0xFF06a9b4),
    const Color(0xFFd2cdd5),
    const Color(0xFF84c9d8),
    const Color(0xFF7ab973),
    const Color(0xFFbe8f97),
    const Color(0xFF919191),
    const Color(0xFFd0c9d2),
    const Color(0xFF806f57),
    const Color(0xFF6b6961),
    const Color(0xFFb2988e),
    const Color(0xFFc2c3b8),
    const Color(0xFF2d212b),
    const Color(0xFF858181),
    const Color(0xFFb0a8a8),
    const Color(0xFFdea586),
    const Color(0xFF8a7665),
    const Color(0xFFffaec9),
    const Color(0xFFc0a834),
    const Color(0xFF192c3d),
  ];

  final List<Color> shimmerLoadingColors = [
    const Color(0xFFE0E0E0),
    const Color(0xFFE0E0E0),
    const Color(0xFFEAF1F1),
    const Color(0xFFEAEDEA),
    const Color(0xFFE2E9E9),
    const Color(0xFFd0c9d2),
    const Color(0xFFd3cdbd),
    const Color(0xFFE8E6E9),
    const Color(0xFFE3E9E9),
    const Color(0xFFE0E0E0),
    const Color(0xFFc1b9b2),
    const Color(0xFFDADADA),
    const Color(0xFFE1E1E1),
    const Color(0xFFd0c9d2),
    const Color(0xFFEAEDEA),
    const Color(0xFFEAF1F1),
    const Color(0xFFd3cdbd),
    const Color(0xFFd8c493),
    const Color(0xFFE1E1E1),
    const Color(0xFFb5b0b0)
  ];

  Color randomGenerator() {
    return circleColors[Random().nextInt(max(0, 19))];
  }

  Color randomGeneratorByIndex(int index) {
    int indexOfColor = _getColorIndex(index);
    return circleColors[indexOfColor];
  }


  int _getColorIndex(int index) {
    int indexOfColor = 0;
    if(index > (circleColors.length - 1)) {
      indexOfColor = (index % (circleColors.length - 1));
    } else {
      indexOfColor = index;
    }

    return indexOfColor;
  }

  Color randomGenreColorByIndex(int index) {
    int indexOfColor = _getGenreColorIndex(index);
    return genreColors[indexOfColor];
  }


  int _getGenreColorIndex(int index) {
    int indexOfColor = 0;
    if(index > (genreColors.length - 1)) {
      indexOfColor = (index % (genreColors.length - 1));
    } else {
      indexOfColor = index;
    }

    return indexOfColor;
  }

  Color randomShimmerLoadingColorGeneratorByIndex(int index) {
    int indexOfColor = _getShimmerLoadingColorIndex(index);
    return shimmerLoadingColors[indexOfColor];
  }

  int _getShimmerLoadingColorIndex(int index) {
    int indexOfColor = 0;
    if(index > (shimmerLoadingColors.length - 1)) {
      indexOfColor = (index % (shimmerLoadingColors.length - 1));
    } else {
      indexOfColor = index;
    }

    return indexOfColor;
  }

// Random Color Generator - Ankit Code - END

}

class UtilColors {
  static int hexToInt(String hex) {
    if(hex.length == 6) {
      hex = 'FF$hex';
    }
    
    int val = 0;
    int len = hex.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = hex.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw const FormatException('Invalid hexadecimal value');
      }
    }
    return val;
  }


  static Color parseHexColor(String hexColorString) {
    hexColorString = hexColorString.toUpperCase().replaceAll("#", "");
    if (hexColorString.length == 6) {
      hexColorString = "FF" + hexColorString;
    }
    int colorInt = int.parse(hexColorString, radix: 16);
    return Color(colorInt);
  }
}