import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter/material.dart";
import "language_bloc.dart";

class AppBlocProvider extends StatelessWidget{
  final Widget child;

  const AppBlocProvider({required this.child, super.key});

  @override
  Widget build(BuildContext context){
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => LanguageBloc())
      ],
      child: child
    );
  }
}