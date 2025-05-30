import 'package:flutter/material.dart';
import 'package:history_app/core/utils/app_strings.dart';
import 'package:history_app/features/onBoarding/data/models/onBoardng_model.dart';
import 'package:history_app/features/onBoarding/functions/onBoarding_visited.dart';
import 'package:history_app/features/onBoarding/presentation/widget/create_and_login_button_widget.dart';
import 'package:history_app/features/onBoarding/presentation/widget/my_button_widget.dart';
import 'package:history_app/features/onBoarding/presentation/widget/onBoarding_image_widget.dart';
import 'package:history_app/features/onBoarding/presentation/widget/onBoarding_subtitle_widget.dart';
import 'package:history_app/features/onBoarding/presentation/widget/onBoarding_title_widget.dart';
import 'package:history_app/features/onBoarding/presentation/widget/page_indicator_widget.dart';
import 'package:history_app/features/onBoarding/presentation/widget/skip_text_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<OnboardingScreen> {
  final PageController _controller = PageController(
    initialPage: 0,
  );
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: MediaQuery.of(context).size.height,
      child: PageView.builder(
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        controller: _controller,
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 84),
                currentIndex != 2
                    ? SkipTextButton(
                        text: AppStrings.skipString,
                        onTap: () {
                          onBoardingVisited();
                          _controller.jumpToPage(2);
                        },
                      )
                    : const SizedBox.shrink(),
                const SizedBox(height: 32),
                OnboardingImageWidget(
                    imagePath: onBoardingData[index].imagePath),
                const SizedBox(height: 24),
                PageIndicatorWidget(controller: _controller),
                const SizedBox(height: 32),
                OnboardingTitleWidget(title: onBoardingData[index].title),
                const SizedBox(height: 16),
                OnboardingSubtitleWidget(
                    subTitle: onBoardingData[index].subTitle),
                const SizedBox(height: 88),
                currentIndex == onBoardingData.length - 1
                    ? const CreateAndLoginButtonWidget()
                    : MyButtonWidget(
                        text: AppStrings.nextString,
                        onTap: () {
                          _controller.nextPage(
                              curve: Curves.bounceOut,
                              duration: const Duration(milliseconds: 300));
                        },
                      ),
                const SizedBox(height: 10),
              ],
            ),
          );
        },
      ),
    ));
  }
}
