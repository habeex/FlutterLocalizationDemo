import 'package:testing/locale_config.dart';

class SwahiliLocale {
  static Map<String, String> getLocales({dynamic inLineValue}) {
    return {
      LocaleConfig.WELCOME: "Karibu",
      LocaleConfig.GOOD_MORNING: "Habari za asubuhi",
    };
  }
}