import 'package:flutter/material.dart';
import 'package:history_app/core/utils/app_colors.dart';
import 'package:history_app/core/utils/app_font_style.dart';
import 'package:history_app/core/utils/app_images.dart';
import 'package:history_app/core/utils/app_strings.dart';
import 'package:history_app/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:history_app/features/onBoarding/presentation/widget/my_button_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 110),
            Center(
                child: Text(
              AppStrings.forgotPw,
              style: AppFontStyle.poppins600x28.copyWith(fontSize: 24),
            )),
            const SizedBox(height: 40),
            SizedBox(
              height: 235,
              width: 235,
              child: Image.asset(AppImages.forgetPwFrame),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34),
              child: Text(
                textAlign: TextAlign.center,
                AppStrings.enterEmailBelow,
                style: AppFontStyle.poppins400x12
                    .copyWith(fontSize: 14, color: AppColors.blackGrey),
              ),
            ),
            const SizedBox(height: 41),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomTextFormField(
                  text: AppStrings.email, showSuffix: false),
            ),
            const SizedBox(height: 80),
            MyButtonWidget(text: AppStrings.sendVer),
            const SizedBox(height: 17),
          ],
        ),
      ),
    );
  }
}
