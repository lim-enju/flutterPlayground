import 'package:basic_06_crypto_track/domain/model/transaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_state.freezed.dart';

@freezed
class MainState with _$MainState {
  factory MainState({@Default([]) List<Transaction> transactions}) = _MainState;
}
