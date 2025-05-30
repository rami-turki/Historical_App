import 'package:flutter/material.dart';
import 'package:history_app/core/utils/app_colors.dart';
import 'package:history_app/core/utils/app_font_style.dart';
import 'package:history_app/core/utils/app_fonts.dart';
import 'package:history_app/core/utils/app_strings.dart';

class CreateAndLoginButtonWidget extends StatelessWidget {
  final void Function()? onTap;

  const CreateAndLoginButtonWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
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
                  AppStrings.createAccountString,
                  style: AppFontStyle.poppins500x18,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          AppStrings.loginNowString,
          style: TextStyle(
              decoration: TextDecoration.underline,
              color: AppColors.deepBrown,
              fontSize: 16,
              fontFamily: AppFonts.poppins,
              fontWeight: FontWeight.w400),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
