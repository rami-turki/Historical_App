import 'package:flutter/material.dart';
import 'package:history_app/core/utils/app_colors.dart';
import 'package:history_app/core/utils/app_font_style.dart';

class HistoricalTitleText extends StatelessWidget {
  final String text;
  const HistoricalTitleText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppFontStyle.poppins400x12
          .copyWith(fontSize: 20, color: AppColors.deepBrown),
    );
  }
}
