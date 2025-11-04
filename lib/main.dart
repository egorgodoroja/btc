import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/core/bloc/language_bloc.dart';
import 'package:flutter_application_1/core/storage/hive_storage.dart';
import 'package:flutter_application_1/core/bloc/app_bloc_provider.dart';
import 'package:flutter_application_1/core/localization/app_localization_setup.dart';
import 'presentation/onboarding/onboarding_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await HiveStorage.init();

  runApp(const AppBlocProvider(child: MyApp()));  
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return BlocBuilder<LanguageBloc, Locale>(
      builder: (context, state){
        return MaterialApp(
          supportedLocales: AppLocalizationSetup.supportedLocales,
          localizationsDelegates: AppLocalizationSetup.localizationDelegates,
          locale: state,
          home: const OnboardingScreen()
        );
      }
    );
  }
}

