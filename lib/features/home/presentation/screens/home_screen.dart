import 'package:flutter/material.dart';
import 'package:history_app/core/utils/app_strings.dart';
import 'package:history_app/core/widget/custom_app_bar.dart';
import 'package:history_app/features/home/presentation/widgets/historical_charachters_section.dart';
import 'package:history_app/features/home/presentation/widgets/historical_sections/historical_periods_section.dart';
import 'package:history_app/features/home/presentation/widgets/historical_title_text.dart';
import 'package:history_app/features/home/presentation/widgets/wars_carousl_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 72),
              const CustomAppBar(),
              const SizedBox(height: 32),
              const HistoricalPeriodsSection(),
              const SizedBox(height: 32),
              HistoricalTitleText(text: AppStrings.histocialCharachters),
              const SizedBox(height: 16),
              const HistoricalCharachtersSection(),
              const SizedBox(height: 32),
              HistoricalTitleText(text: AppStrings.ancientWars),
              const SizedBox(height: 16),
              const WarsCarouslIndicator(image: 'assets/images/Frame 34.jpg'),
              const SizedBox(height: 34),
            ],
          ),
        ),
      ),
    );
  }
}
