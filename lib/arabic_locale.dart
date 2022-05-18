import 'package:testing/locale_config.dart';

/// Model containing arabic translation for each [LocaleConfig]
class ArabicLocale {
  static Map<String, String> getLocales({dynamic inLineValue}) {
    return {
      LocaleConfig.WELCOME: "مرحبا بك في",
      LocaleConfig.GOOD_MORNING: "صباح الخير",
    };
  }
}