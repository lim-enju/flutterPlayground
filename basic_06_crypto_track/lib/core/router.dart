import 'package:basic_06_crypto_track/di/di_setup.dart';
import 'package:basic_06_crypto_track/presentation/main_screen.dart';
import 'package:basic_06_crypto_track/presentation/main_viewmodel.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => ChangeNotifierProvider(
        create: (_) => getIt.get<MainViewmodel>(),
        child: const MainScreen(),
      ),
    )
  ],
);
