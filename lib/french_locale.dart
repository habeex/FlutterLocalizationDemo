import 'package:testing/locale_config.dart';

class FrenchLocale {
  static Map<String, String> getFrenchLocales({dynamic inLineValue}) {
    return {
      LocaleConfig.WELCOME: "Bienvenue à",
      LocaleConfig.GOOD_MORNING: "bonjour",
    };
  }
}