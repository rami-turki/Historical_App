import 'package:flutter/material.dart';
import 'package:history_app/core/services/check_visit_state.dart';
import 'package:history_app/core/utils/app_colors.dart';
import 'package:history_app/core/utils/app_font_style.dart';
import 'package:history_app/core/utils/app_strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    checkVisitState(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: Center(
        child: Text(
          AppStrings.appName,
          style: AppFontStyle.pacifico400x64,
        ),
      ),
    );
  }
}
