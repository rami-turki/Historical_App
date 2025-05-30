import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:history_app/core/services/service_locator.dart';
import 'package:history_app/core/utils/app_strings.dart';
import 'package:history_app/core/utils/databases/cache/cache_helper.dart';
import 'package:history_app/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:history_app/features/home/presentation/widgets/new_nav_bar.dart';
import 'package:history_app/features/onBoarding/presentation/screens/onboarding_screen..dart';

void checkVisitState(BuildContext context) {
  bool isBoardingVisited =
      getIt<CacheHelper>().getData(key: AppStrings.isBoardingVisited) ?? false;
  if (isBoardingVisited == true) {
    if (FirebaseAuth.instance.currentUser != null) {
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const BottomHomeNavBar(),
            ));
      });
    } else {
      Future.delayed(
        const Duration(seconds: 2),
        () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignInScreen(),
              ));
        },
      );
    }
  } else {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OnboardingScreen(),
            ));
      },
    );
  }
}
