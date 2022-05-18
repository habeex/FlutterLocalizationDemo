import 'package:testing/locale_config.dart';

class EnglishLocale {
  /// Return all avaialble english translations
  static Map<String, String> getLocales({dynamic inLineValue}) {
    return {
      LocaleConfig.WELCOME: "Welcome",
      LocaleConfig.GOOD_MORNING: "Good Morning",
    };
  }
}