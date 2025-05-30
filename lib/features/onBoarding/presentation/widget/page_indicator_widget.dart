import 'package:flutter/material.dart';
import 'package:history_app/core/utils/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicatorWidget extends StatelessWidget {
  final PageController controller;
  const PageIndicatorWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: ExpandingDotsEffect(
          activeDotColor: AppColors.deepBrown, dotHeight: 8, dotWidth: 10),
    );
  }
}
