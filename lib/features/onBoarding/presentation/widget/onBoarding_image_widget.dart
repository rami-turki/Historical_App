import 'package:flutter/material.dart';

class OnboardingImageWidget extends StatelessWidget {
  final String imagePath;
  const OnboardingImageWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 290,
        child: Image.asset(imagePath),
      ),
    );
  }
}
