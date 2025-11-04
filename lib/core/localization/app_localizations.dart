import "dart:convert";

import "package:flutter/material.dart";
import "package:flutter/services.dart" show rootBundle;
import "app_localization_delegate.dart";

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context){
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  Map<String, String>? _translations;

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  Future<void> load() async {
    String path = "assets/localizations/${locale.languageCode}.json";
    String loads = await rootBundle.loadString(path);
    _translations = jsonDecode(loads);
  }

  String translate(String key){
    return _translations?[key] ?? "unknown";
  }
}
