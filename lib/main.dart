import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:history_app/core/services/service_locator.dart';
import 'package:history_app/core/utils/databases/cache/cache_helper.dart';
import 'package:history_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:history_app/features/home/presentation/widgets/new_nav_bar.dart';
import 'package:history_app/features/onBoarding/presentation/screens/splash_screen.dart';
import 'package:history_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setUpServiceLocator();

  await checkStateVisit();

  runApp(BlocProvider(
    create: (context) => AuthCubit(),
    child: const HistoryApp(),
  ));
}

Future<void> checkStateVisit() async {
  await getIt<CacheHelper>().init();
  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    if (user == null) {
      if (kDebugMode) {
        print('User is currently signed out!');
      }
    } else {
      if (kDebugMode) {
        print('User is signed in!');
      }
    }
  });
}

class HistoryApp extends StatelessWidget {
  const HistoryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
