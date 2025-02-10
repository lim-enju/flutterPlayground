import 'package:basic_06_crypto_track/domain/model/transaction_price_data.dart';
import 'package:basic_06_crypto_track/domain/model/transaction_volumn_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';

@freezed
class Transaction with _$Transaction {
  factory Transaction({
    required bool isPrimary,
    required TransactionPriceData currentTradePrice,
    required TransactionVolumnData currentTradeVolumn,
  }) = _Transaction;
}
