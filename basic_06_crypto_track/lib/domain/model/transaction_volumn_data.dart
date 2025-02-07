
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_volumn_data.freezed.dart';

@freezed
class TransactionVolumnData with _$TransactionVolumnData{
  factory TransactionVolumnData({
      required double volumn
  }) = _TransactionVolumnData;
}