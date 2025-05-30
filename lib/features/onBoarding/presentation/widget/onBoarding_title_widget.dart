import 'package:flutter/material.dart';
import 'package:history_app/core/utils/app_font_style.dart';

class OnboardingTitleWidget extends StatelessWidget {
  final String title;
  const OnboardingTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Align(
        alignment: Alignment.center,
        child: Text(title,
            style: AppFontStyle.poppins500x24
                .copyWith(fontWeight: FontWeight.w800),
            maxLines: 2),
      ),
    );
  }
}
