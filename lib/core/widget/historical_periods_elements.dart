import 'package:flutter/material.dart';
import 'package:history_app/core/utils/app_colors.dart';
import 'package:history_app/core/utils/app_font_style.dart';

class HistoricalPeriodsElements extends StatelessWidget {
  final String title;
  final String image;
  const HistoricalPeriodsElements(
      {super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      width: 164,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 15),
          SizedBox(
            width: 65,
            height: 48,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: AppFontStyle.poppins500x18
                  .copyWith(fontSize: 16, color: AppColors.deepBrown),
            ),
          ),
          const SizedBox(width: 16),
          SizedBox(
            width: 47,
            height: 64,
            child: Image.asset(image),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
