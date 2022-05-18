/// Helper class that defines the list of supported languages on the platform
class LocalLanguage {

  static String selectedLanguageCode = 'sw';
  String title, code;
  /// The layout configuration for the locale.
  /// This can be either trl or ltr
  LocaleLayoutConfig layoutConfig;

  LocalLanguage(this.code, this.title,
      {this.layoutConfig = LocaleLayoutConfig.LTR});

  static const String LOCALE_ENGLISH = "en";
  static const String LOCALE_FRENCH = "fr";
  static const String LOCALE_HAUSA = "hu";
  static const String LOCALE_SWAHILI = "sw";
  static const String LOCALE_ARABIC = "ar";

  /// Returns languages supported by the platform
  static List<LocalLanguage> getSupportedLocales() {
    return [
      LocalLanguage(LOCALE_ENGLISH, "English"),
      LocalLanguage(LOCALE_FRENCH, "French"),
      LocalLanguage(LOCALE_HAUSA, "Hausa"),
      LocalLanguage(LOCALE_SWAHILI, "Swahili"),
      LocalLanguage(LOCALE_ARABIC, "Arabic", layoutConfig: LocaleLayoutConfig.RTL),
    ];
  }

  static LocalLanguage defaultLocale() {
    return menuItems
        .firstWhere((element) =>
    element.code.toLowerCase() ==
        selectedLanguageCode.toLowerCase(), orElse: ()=> menuItems.first);
  }

  static final List<LocalLanguage> menuItems = LocalLanguage.getSupportedLocales();

}

/// Enum defining the type of layout configuration supported by the platform
///
/// [LocaleLayoutConfig.RTL] indicates Right to left layout which is being used by [LocalLanguage.LOCALE_ARABIC]
/// [LocaleLayoutConfig.LTR] means Left to right
// ignore: constant_identifier_names
enum LocaleLayoutConfig { RTL, LTR }