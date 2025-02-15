import 'package:basic_06_crypto_track/di/di_setup.dart';
import 'package:basic_06_crypto_track/presentation/detail/detail_screen.dart';
import 'package:basic_06_crypto_track/presentation/detail/detail_viewmodel.dart';
import 'package:basic_06_crypto_track/presentation/main/main_screen.dart';
import 'package:basic_06_crypto_track/presentation/main/main_viewmodel.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: '/detail',
      builder: (context, state) => const DetailScreen(),
    ),
  ],
);
