import 'package:flutter/material.dart';
import 'package:history_app/core/utils/app_colors.dart';
import 'package:history_app/core/utils/app_font_style.dart';

class MyButtonWidget extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const MyButtonWidget({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          height: 56,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.lightBrown,
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style: AppFontStyle.poppins500x18,
            ),
          ),
        ),
      ),
    );
  }
}
