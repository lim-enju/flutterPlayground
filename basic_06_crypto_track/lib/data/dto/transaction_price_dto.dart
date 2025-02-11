import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_price_dto.freezed.dart';
part 'transaction_price_dto.g.dart';

@freezed
class TransactionPriceDto with _$TransactionPriceDto {
  const TransactionPriceDto._();

  const factory TransactionPriceDto({
    required String market,
    required String trade_date,
    required String trade_time,
    required String trade_date_kst,
    required String trade_time_kst,
    required int trade_timestamp,
    required double opening_price,
    required double high_price,
    required double low_price,
    required double trade_price,
    required double prev_closing_price,
    required String change,
    required double change_price,
    required double change_rate,
    required double signed_change_price,
    required double signed_change_rate,
    required double trade_volume,
    required double acc_trade_price,
    required double acc_trade_price_24h,
    required double acc_trade_volume,
    required double acc_trade_volume_24h,
    required double highest_52_week_price,
    required String highest_52_week_date,
    required double lowest_52_week_price,
    required String lowest_52_week_date,
    required int timestamp,
  }) = _TransactionPriceDto;

  factory TransactionPriceDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionPriceDtoFromJson(json);

  static List<TransactionPriceDto> fromJsonList(List<dynamic> jsonList) {
    return jsonList
        .map((json) =>
            TransactionPriceDto.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
