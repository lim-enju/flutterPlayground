import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_volumne_dto.freezed.dart';
part 'transaction_volumne_dto.g.dart';

@freezed
class TransactionVolumneDto with _$TransactionVolumneDto {
  const TransactionVolumneDto._();

  const factory TransactionVolumneDto({
    required String market,
    required String tradeDateUtc,
    required String tradeTimeUtc,
    required int timestamp,
    required double tradePrice,
    required double tradeVolume,
    required double prevClosingPrice,
    required double changePrice,
    required String askBid,
    required int sequentialId,
  }) = _TransactionVolumneDto;

  factory TransactionVolumneDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionVolumneDtoFromJson(json);

  static List<TransactionVolumneDto> fromJsonList(List<dynamic> jsonList) {
    return jsonList
        .map((json) =>
            TransactionVolumneDto.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
