import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:testing/locale_language.dart';
import 'package:testing/locale_config.dart';
import 'package:testing/localizations.dart';

void main() {
  runApp(const MyHomePage(title: 'Flutter Localization',));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  LocalLanguage defaultLocale = LocalLanguage.defaultLocale();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Localizations Demo',
      localizationsDelegates: const [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale(defaultLocale.layoutConfig == LocaleLayoutConfig.RTL
          ? "ar"
          : "en"),
      supportedLocales: const [
        Locale("ar"),
        Locale("en"),
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(LanguageLocalizations.value(LocaleConfig.WELCOME)),
              Text(LanguageLocalizations.value(LocaleConfig.GOOD_MORNING)),
              const SizedBox(height: 16,),
              Row(
                children: [
                  TextButton(onPressed: () => _selectedLanguage(LocalLanguage.LOCALE_ENGLISH), child: const Text('ENGLISH')),
                  TextButton(onPressed: () => _selectedLanguage(LocalLanguage.LOCALE_FRENCH), child: const Text('FRENCH')),
                  TextButton(onPressed: () => _selectedLanguage(LocalLanguage.LOCALE_HAUSA), child: const Text('HAUSA')),
                  TextButton(onPressed: () => _selectedLanguage(LocalLanguage.LOCALE_SWAHILI), child: const Text('SWAHILI')),
                  TextButton(onPressed: () => _selectedLanguage(LocalLanguage.LOCALE_ARABIC), child: const Text('ARABIC')),
                ],
              )
            ],
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }

  _selectedLanguage(String language) {
    setState(() {
      LocalLanguage.selectedLanguageCode = language;
    });
  }
}
