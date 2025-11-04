import "package:flutter/material.dart";
import "widgets/onboarding_slider.dart";
import "package:flutter_application_1/core/utils/utils.dart";
import "package:flutter_application_1/data/onboarding_items_data.dart";
import "package:smooth_page_indicator/smooth_page_indicator.dart";

class OnboardingScreen extends StatefulWidget{
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>{

  final PageController controller = PageController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          spacing(height: 30),
          OnboardingSlider(items: OnboardingItemsData.items, controller: controller),
          spacing(height: 50),
          SmoothPageIndicator(controller: controller, count: 2)
        ],
      )
    );
  }
}