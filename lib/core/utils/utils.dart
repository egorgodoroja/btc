import "package:flutter/material.dart";
import "package:flutter_application_1/core/localization/app_localizations.dart";

class OnboardingImageWidget extends StatelessWidget{
  final String imagePath;
  final double? height;

  const OnboardingImageWidget(this.imagePath, {this.height, super.key});

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Container(
      height: height ?? size.width*0.7,
      width: height ?? size.width*0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Image.asset(imagePath, fit: BoxFit.cover)
    );
  }
}

Widget spacing({double? width, double? height}){
  return SizedBox(width: width, height: height);
}

String trans(BuildContext context, {required String key}){
  return AppLocalizations.of(context)!.translate(key);
}