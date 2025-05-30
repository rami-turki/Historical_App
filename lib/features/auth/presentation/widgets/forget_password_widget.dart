import 'package:flutter/material.dart';
import 'package:history_app/core/utils/app_colors.dart';
import 'package:history_app/core/utils/app_font_style.dart';
import 'package:history_app/core/utils/app_strings.dart';
import 'package:history_app/features/auth/presentation/screens/forgot_password_screen.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ForgotPasswordScreen(),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Align(
            alignment: Alignment.topRight,
            child: Text(
              AppStrings.forgotPw,
              style: AppFontStyle.poppins600x28
                  .copyWith(fontSize: 12, color: AppColors.blackGrey),
            )),
      ),
    );
  }
}
