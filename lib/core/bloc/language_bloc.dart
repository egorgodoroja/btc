import "package:flutter_bloc/flutter_bloc.dart";
import "../storage/hive_storage.dart";
import 'package:flutter/material.dart';

abstract class LanguageEvent{}

class InitLanguage extends LanguageEvent{}

class ChangeLanguage extends LanguageEvent{
  final String lang;
  ChangeLanguage(this.lang);
}

class LanguageBloc extends Bloc<LanguageEvent, Locale>{
  LanguageBloc(): super(Locale('en')){
    on<InitLanguage>(_onInitLanguage);
    on<ChangeLanguage>(_onChangeLanguage);
  }

  Future<void> _onInitLanguage(InitLanguage event, Emitter<Locale> emit) async {
    try{
      String lang = HiveStorage.I.getLang();
      emit(Locale(lang));
    }catch(e){
      await HiveStorage.I.setLang('en');
      emit(Locale('en'));
    }
  }

  Future<void> _onChangeLanguage(ChangeLanguage event, Emitter<Locale> emit) async {
    await HiveStorage.I.setLang(event.lang);
    emit(Locale(event.lang));
  }
}