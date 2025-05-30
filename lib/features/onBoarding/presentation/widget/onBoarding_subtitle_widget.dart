import 'package:flutter/material.dart';
import 'package:history_app/core/utils/app_font_style.dart';

class OnboardingSubtitleWidget extends StatelessWidget {
  final String subTitle;
  const OnboardingSubtitleWidget({super.key, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 50, right: 45),
      child: Text(
        subTitle,
        style: AppFontStyle.poppins300x16,
        maxLines: 2,
      ),
    );
  }
}
