import 'package:testing/arabic_locale.dart';
import 'package:testing/english_locale.dart';
import 'package:testing/french_locale.dart';
import 'package:testing/hausa_locale.dart';
import 'package:testing/locale_language.dart';
import 'package:testing/swahilli_locale.dart';

/// Localisation engine that determines the type of [LocalLanguage] language to render
class LanguageLocalizations {
  static Map<String, Map<String, String>> _localizedValues(
      dynamic inLineValue) =>
      {
        LocalLanguage.LOCALE_ENGLISH:
        EnglishLocale.getLocales(inLineValue: inLineValue),
        LocalLanguage.LOCALE_ARABIC:
        ArabicLocale.getLocales(inLineValue: inLineValue),
        LocalLanguage.LOCALE_FRENCH:
        FrenchLocale.getFrenchLocales(inLineValue: inLineValue),
        LocalLanguage.LOCALE_HAUSA:
        HausaLocale.getHausaLocales(inLineValue: inLineValue),
        LocalLanguage.LOCALE_SWAHILI:
        SwahiliLocale.getLocales(inLineValue: inLineValue),
      };

  /// Returns a value by the [key] passed and the selected language code in [selectedLanguageCode].
  /// The default value will be in [LocalLanguage.LOCALE_ENGLISH]
  /// else return a string
  static String value(String key, {dynamic inLineValue}) {
    return _localizedValues(inLineValue)[LocalLanguage.selectedLanguageCode]?[key] ?? EnglishLocale.getLocales()[key] ?? "Unavailable";
  }
}
