import 'package:history_app/core/utils/app_strings.dart';

class HistoricalPeriodsModel {
  final String name;
  final String image;
  final String description;

  HistoricalPeriodsModel(
      {required this.name, required this.image, required this.description});
}

List<HistoricalPeriodsModel> historicalPeriodModel = [
  HistoricalPeriodsModel(
      name: AppStrings.ancientEgypt,
      image: 'assets/images/Frame 27.png',
      description: ''),
  HistoricalPeriodsModel(
      name: AppStrings.islamicEra,
      image: 'assets/images/Fram 28.png',
      description: ''),
];
