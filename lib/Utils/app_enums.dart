class AppEnums {}

enum PlatformOSType { MOBILE_ANDROID, MOBILE_IOS, WEB, OTHER }
enum PlatformSizeType { MOBILE, TABLET, DESKTOP, OTHER }

enum UIStates { PROGRESS, VALID_DATA, EMPTY, ERROR, DEFAULT }

enum OtpVerificationFlow { login, signup, forgot_password, forgot_otp }

enum EnumAppThemeParentBackground { LIGHT, DIM, DARK }

enum EnumAppThemeChildColor {
  SKY_BLUE,
  DARK_YELLOW,
  FLOWER_RED,
  OCTOPUS_VIOLET,
  FIRE_ORANGE,
  GUAVA_GREEN
}

enum EnumAppThemeFonts { ABEL, ACTOR, BILBO, HIND, LATO, ROBOTO, ZEYADA }

enum EnumAppThemeFontsSize { D, L, XL, XXL, XXXL }

enum EnumDashboardMobileActiveScreenType { EXPLORE, MY_PLAN, HEALTH, OPD }

enum EnumUI_ButtonCallFromAdvisor { FILLED, HOLLOW, DEFAULT, GREEN_HOLLOW }

enum EnumOpdBuyPlanFlowType {
  BASIC_INFORMATION,
  CONTACT_DETAILS,
  NOMINEE_INFORMATION,
  DISCLAIMERS,
  AUTHORIZATION,
  DECLARATION,
  STATUTORY_WARNING,
  CUSTOMER_CONSENT,
  FINAL_DETAIL_SHOW,
  UNKNOWN,
}

enum EnumDropDownPlanCategoriesPlanType {
  DEFAULT,
  PLAN_CARD_UI,
  PLAN_CUSTOMIZE_POPUP_UI
}

enum EnumCustomiseDialogUIFor { MOBILE, WEB }

enum EnumTalkToAdvisor { DEFAULT, TALK_TO_ADVISOR, COMING_SOON }
enum EnumSelectLab { DEFAULT, SELECT_LAB }
enum EnumGender { MALE, FEMALE }
enum EnumDashboardTabs {TEST_AND_SCANS, TELE_CONSULT, DOCTOR_APPOINTMENT}
enum EnumPackageAndTestType {HEALTH_PACKAGE, TESTS}
