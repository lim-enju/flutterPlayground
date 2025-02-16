import 'package:basic_06_crypto_track/domain/model/transaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_state.freezed.dart';

@freezed
class DetailState with _$DetailState {
  factory DetailState({
    Transaction? transaction,
  }) = _DetailState;
}
