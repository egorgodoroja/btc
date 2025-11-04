import "package:flutter/material.dart";
import "app_localizations.dart";
import "app_localization_setup.dart";

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations>{

  const AppLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => AppLocalizationSetup.supportedLocales.contains(locale);

  @override
  Future<AppLocalizations> load(Locale locale)async{
    AppLocalizations appLocalizations = AppLocalizations(locale);
    await appLocalizations.load();  
    return appLocalizations;
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}