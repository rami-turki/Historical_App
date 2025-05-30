import 'package:get_it/get_it.dart';
import 'package:history_app/core/utils/databases/cache/cache_helper.dart';
import 'package:history_app/features/auth/presentation/cubit/auth_cubit.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerSingleton<AuthCubit>(AuthCubit());
}
