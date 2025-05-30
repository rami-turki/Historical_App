import 'package:flutter/material.dart';
import 'package:history_app/core/utils/app_font_style.dart';
import 'package:history_app/core/utils/app_strings.dart';
import 'package:history_app/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:history_app/features/auth/presentation/widgets/sign_up_form.dart';
import 'package:history_app/features/auth/presentation/widgets/terms_condition_text.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 152),
              Center(
                child: Text('Welcome !', style: AppFontStyle.poppins600x28),
              ),
              const SizedBox(height: 16),
              const SignUpForm(),
              const SizedBox(height: 16),
              Center(
                child: TermsConditionText(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInScreen(),
                          ));
                    },
                    signInOrUpText: true,
                    text1: AppStrings.alreadyHaveAcc,
                    text2: AppStrings.signIn),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
