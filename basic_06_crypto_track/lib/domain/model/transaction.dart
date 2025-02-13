import 'package:basic_06_crypto_track/domain/model/transaction_price_data.dart';
import 'package:basic_06_crypto_track/domain/model/transaction_volumn_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';

@freezed
class Transaction with _$Transaction {
  factory Transaction({
    required String market,
    required bool isPrimary,
    required double highPrice,
    required double lowPrice,
    required double signedChangePrice,
    required String change,
    @Default([]) List<TransactionPriceData> currentTradePrice,
    @Default([]) List<TransactionVolumnData> currentTradeVolumn,
  }) = _Transaction;
}
