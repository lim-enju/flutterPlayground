import 'package:basic_06_crypto_track/presentation/main_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewmodel>();

    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
    );
  }
}
