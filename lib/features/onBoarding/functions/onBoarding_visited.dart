import 'package:history_app/core/services/service_locator.dart';
import 'package:history_app/core/utils/app_strings.dart';
import 'package:history_app/core/utils/databases/cache/cache_helper.dart';

void onBoardingVisited() {
  getIt<CacheHelper>().saveData(key: AppStrings.isBoardingVisited, value: true);
}
