import 'package:flutter/material.dart';
import 'package:history_app/core/utils/app_strings.dart';
import 'package:history_app/core/widget/historical_periods_elements.dart';
import 'package:history_app/features/home/data/models/historical_periods_model.dart';
import 'package:history_app/features/home/presentation/widgets/historical_title_text.dart';

class HistoricalPeriodsSection extends StatelessWidget {
  const HistoricalPeriodsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HistoricalTitleText(text: AppStrings.historicalPeriod),
        const SizedBox(height: 16),
        SizedBox(
          height: 96,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            scrollDirection: Axis.horizontal,
            itemCount: historicalPeriodModel.length,
            itemBuilder: (context, index) {
              return HistoricalPeriodsElements(
                  title: historicalPeriodModel[index].name,
                  image: historicalPeriodModel[index].image);
            },
          ),
        ),
      ],
    );
  }
}
