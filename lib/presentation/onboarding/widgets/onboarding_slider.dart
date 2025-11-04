import "package:flutter/material.dart";
import "package:flutter_application_1/core/utils/utils.dart";

///The [OnboardingSlider] class represents the slider on the main onboarding page
class OnboardingSlider extends StatefulWidget{

  final PageController controller;

  final List<OnboardingItem> items;

  const OnboardingSlider({required this.items, required this.controller, super.key});

  @override
  State<OnboardingSlider> createState() => _OnboardingSliderState();
}

class _OnboardingSliderState extends State<OnboardingSlider>{
  @override
  Widget build(BuildContext context){
    return PageView.builder(
      controller: widget.controller,
      itemCount: widget.items.length,
      itemBuilder: (context, index){
        OnboardingItem item = widget.items[index];
        return Column(
          children: [
            OnboardingImageWidget(item.image),
            spacing(height: 15),
            Text(trans(context, key: item.title), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            spacing(height: 10),
            Text(trans(context, key: item.description), style: TextStyle(fontWeight: FontWeight.w600))
          ]
        );
      },
    );
  }
}

/// The [OnboardingItem] class represents the object of the onboarding content
class OnboardingItem{
  final String title;
  final String description;
  final String image;

  const OnboardingItem({
    required this.title,
    required this.description,
    required this.image
  });
}