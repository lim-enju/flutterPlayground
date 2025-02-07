import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_price_data.freezed.dart'; 

@freezed
class TransactionPriceData with _$TransactionPriceData {
  factory TransactionPriceData({
    required double price,
  }) = _TransactionPriceData;
}