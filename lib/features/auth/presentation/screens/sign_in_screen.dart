import 'package:flutter/material.dart';
import 'package:history_app/core/utils/app_font_style.dart';
import 'package:history_app/core/utils/app_strings.dart';
import 'package:history_app/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:history_app/features/auth/presentation/widgets/landing_widget_sing_in.dart';
import 'package:history_app/features/auth/presentation/widgets/sign_in_form.dart';
import 'package:history_app/features/auth/presentation/widgets/terms_condition_text.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LandingWidgetSingIn(),
            const SizedBox(height: 32),
            Center(
              child: Text(
                AppStrings.welcome,
                style: AppFontStyle.poppins600x28.copyWith(fontSize: 24),
              ),
            ),
            const SizedBox(height: 23),
            const SignInForm(),
            const SizedBox(height: 16),
            Center(
              child: TermsConditionText(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ));
                  },
                  text1: 'Don`t have an account? ',
                  text2: AppStrings.signUpString,
                  signInOrUpText: true),
            ),
          ],
        ),
      ),
    );
  }
}
