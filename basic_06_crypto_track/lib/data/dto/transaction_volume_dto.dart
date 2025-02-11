import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_volume_dto.freezed.dart';
part 'transaction_volume_dto.g.dart';

@freezed
class TransactionVolumeDto with _$TransactionVolumeDto {
  const TransactionVolumeDto._();

  factory TransactionVolumeDto({
    @JsonKey(name: 'market') required String market,
    @JsonKey(name: 'trade_date_utc') required String tradeDateUtc,
    @JsonKey(name: 'trade_time_utc') required String tradeTimeUtc,
    @JsonKey(name: 'timestamp') required int timestamp,
    @JsonKey(name: 'trade_price') required double tradePrice,
    @JsonKey(name: 'trade_volume') required double tradeVolume,
    @JsonKey(name: 'prev_closing_price') required double prevClosingPrice,
    @JsonKey(name: 'change_price') required double changePrice,
    @JsonKey(name: 'ask_bid') required String askBid,
    @JsonKey(name: 'sequential_id') required int sequentialId,
  }) = _TransactionVolumeDto;

  factory TransactionVolumeDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionVolumeDtoFromJson(json);

  static List<TransactionVolumeDto> fromJsonList(List<dynamic> jsonList) {
    return jsonList
        .map((json) =>
            TransactionVolumeDto.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
