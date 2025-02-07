import 'package:freezed_annotation/freezed_annotation.dart';

import 'transaction_price_data.dart';
import 'transaction_volumn_data.dart';

part 'transaction_chart_data.freezed.dart'; 

@freezed
class TransactionChartData with _$TransactionChartData {
  factory TransactionChartData({
    required List<TransactionPriceData> currentTradePrice,
    required List<TransactionVolumnData> currentTradeVolumn,
  }) = _TransactionChartData;
}