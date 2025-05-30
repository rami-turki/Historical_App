import 'package:history_app/core/utils/app_strings.dart';

class HistoricalCharachtersModel {
  final String name;
  final String image;
  final String description;

  HistoricalCharachtersModel(
      {required this.name, required this.image, required this.description});
}

List<HistoricalCharachtersModel> historicalCharachterModel = [
  HistoricalCharachtersModel(
      name: AppStrings.lionHeart,
      image: 'assets/images/Frame 29.png',
      description: ''),
  HistoricalCharachtersModel(
      name: AppStrings.napelon,
      image: 'assets/images/Frame 30.png',
      description: ''),
  HistoricalCharachtersModel(
      name: AppStrings.salaaeddin,
      image: 'assets/images/Frame 31.png',
      description: ''),
  HistoricalCharachtersModel(
      name: AppStrings.qianlong,
      image: 'assets/images/Frame 32.png',
      description: ''),
];
