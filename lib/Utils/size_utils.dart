
import 'exception_utils.dart';

class SizeUtils {
  static final instance = SizeUtils();

  final double appDefaultSpacing = 16.0;

  final double appDefaultSpacingSemiHalf = 12.0;
  final double appDefaultSpacingHalf = 8.0;
  final double appDefaultSpacingQuarter = 4.0;

  final double appDefaultSpacing20 = 20.0;
  final double appDefaultSpacing40 = 40.0;

  final double appListSeparatorHeight = 6.0;
  final double appSearchBarHeight = 56.0;
  final double appIconSize = 22.0;

  final double cardRadius = 4.0;
  final double sideSheetRadius = 16.0;

  final double constantHeightPlanHighlightContainer = 45;
  final double constantHeightCustomisePopupCategoryCardTopPart = 20;
  final double constantHeightCustomisePopupCategoryCardBottomPart = 10;

  SizeUtils() {
    ExceptionUtils.instance.throwCanNotCreateObjectSingletonInstance();
  }
}
