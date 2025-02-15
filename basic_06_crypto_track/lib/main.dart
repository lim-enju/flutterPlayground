import 'package:basic_06_crypto_track/core/router.dart';
import 'package:basic_06_crypto_track/di/di_setup.dart';
import 'package:basic_06_crypto_track/presentation/detail/detail_viewmodel.dart';
import 'package:basic_06_crypto_track/presentation/main/main_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  configureDependencies();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => getIt.get<MainViewmodel>()),
        ChangeNotifierProvider(create: (_) => getIt.get<DetailViewmodel>()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.black87,
        textTheme: const TextTheme(
          displayMedium: TextStyle(
            color: Colors.white,
          ),
          bodyLarge: TextStyle(
            color: Colors.white,
          ),
          bodyMedium: TextStyle(
            color: Colors.white,
          ),
          bodySmall: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
