import "package:flutter/material.dart";
import "app_localizations.dart";
import 'package:flutter_localizations/flutter_localizations.dart';
class AppLocalizationSetup {
  static const Iterable<Locale> supportedLocales = [
    Locale('en'),
    Locale('ro'),
    Locale('ru')
  ];

  static const Iterable<LocalizationsDelegate<dynamic>> localizationDelegates = [ AppLocalizations.delegate, GlobalMaterialLocalizations.delegate, GlobalWidgetsLocalizations.delegate, GlobalCupertinoLocalizations.delegate, ];
  
}