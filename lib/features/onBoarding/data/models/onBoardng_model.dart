import 'package:history_app/core/utils/app_images.dart';
import 'package:history_app/core/utils/app_strings.dart';

class OnboardngModel {
  final String imagePath;
  final String title;
  final String subTitle;

  OnboardngModel(
      {required this.imagePath, required this.title, required this.subTitle});
}

final List<OnboardngModel> onBoardingData = [
  OnboardngModel(
      imagePath: AppImages.onBoarding1,
      title: AppStrings.onBoarding1Ttile,
      subTitle: AppStrings.onBoarding1Subtitle),
  OnboardngModel(
      imagePath: AppImages.onBoarding2,
      title: AppStrings.onBoarding2Ttile,
      subTitle: AppStrings.onBoarding2Subtitle),
  OnboardngModel(
      imagePath: AppImages.onBoarding3,
      title: AppStrings.onBoarding3Ttile,
      subTitle: AppStrings.onBoarding3Subtitle),
];
