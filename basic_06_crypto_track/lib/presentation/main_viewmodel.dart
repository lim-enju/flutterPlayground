import 'package:basic_06_crypto_track/presentation/main_state.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class MainViewmodel with ChangeNotifier {
  final MainState _state = MainState();

  MainState get state => _state;
}
