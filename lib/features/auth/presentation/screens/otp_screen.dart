import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:history_app/core/utils/app_colors.dart';
import 'package:history_app/core/utils/app_font_style.dart';
import 'package:history_app/core/utils/app_strings.dart';
import 'package:history_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:history_app/features/auth/presentation/widgets/auth_button.dart';
import 'package:history_app/features/auth/presentation/widgets/my_otp_text_field.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authCubit = context.read<AuthCubit>();

    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 144),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 78),
              child: Text(
                AppStrings.verifyAcc,
                style: AppFontStyle.poppins600x28,
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 78),
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  AppStrings.enter4Digit,
                  style: AppFontStyle.poppins400x12
                      .copyWith(fontSize: 14, color: AppColors.blackGrey),
                ),
              ),
            ),
            const SizedBox(height: 32),
            const MyOtpTextField(),
            const SizedBox(height: 32),
            Text(
              AppStrings.didntReciveCode,
              style: AppFontStyle.poppins400x12
                  .copyWith(fontSize: 14, color: AppColors.blackGrey),
            ),
            const SizedBox(height: 8),
            Text(
              AppStrings.resendCode,
              style: AppFontStyle.poppins400x12.copyWith(
                  fontSize: 16,
                  color: AppColors.blackGrey,
                  decoration: TextDecoration.underline),
            ),
            const SizedBox(height: 290),
            AuthButton(
              text: AppStrings.verifyNow,
              textColor: Colors.white,
              color:
                  authCubit.isOtpFilled! ? AppColors.lightBrown : Colors.grey,
            ),
            const SizedBox(height: 17),
          ],
        ),
      ),
    );
  }
}
