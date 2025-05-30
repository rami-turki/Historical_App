import 'package:flutter/material.dart';
import 'package:history_app/core/utils/app_colors.dart';
import 'package:history_app/core/utils/app_font_style.dart';
import 'package:history_app/core/utils/app_fonts.dart';

class TermsConditionText extends StatelessWidget {
  final String text1, text2;
  final bool signInOrUpText;
  final void Function()? onTap;
  const TermsConditionText(
      {super.key,
      required this.text1,
      required this.text2,
      required this.signInOrUpText,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(text: text1, style: AppFontStyle.poppins400x12),
            TextSpan(
              text: text2,
              style: TextStyle(
                decoration: signInOrUpText ? null : TextDecoration.underline,
                color:
                    signInOrUpText ? AppColors.lightGrey : AppColors.deepBrown,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontFamily: AppFonts.poppins,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
