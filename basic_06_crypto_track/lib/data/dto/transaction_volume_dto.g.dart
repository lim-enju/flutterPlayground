// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_volume_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionVolumeDtoImpl _$$TransactionVolumeDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionVolumeDtoImpl(
      market: json['market'] as String,
      tradeDateUtc: json['trade_date_utc'] as String,
      tradeTimeUtc: json['trade_time_utc'] as String,
      timestamp: (json['timestamp'] as num).toInt(),
      tradePrice: (json['trade_price'] as num).toDouble(),
      tradeVolume: (json['trade_volume'] as num).toDouble(),
      prevClosingPrice: (json['prev_closing_price'] as num).toDouble(),
      changePrice: (json['change_price'] as num).toDouble(),
      askBid: json['ask_bid'] as String,
      sequentialId: (json['sequential_id'] as num).toInt(),
    );

Map<String, dynamic> _$$TransactionVolumeDtoImplToJson(
        _$TransactionVolumeDtoImpl instance) =>
    <String, dynamic>{
      'market': instance.market,
      'trade_date_utc': instance.tradeDateUtc,
      'trade_time_utc': instance.tradeTimeUtc,
      'timestamp': instance.timestamp,
      'trade_price': instance.tradePrice,
      'trade_volume': instance.tradeVolume,
      'prev_closing_price': instance.prevClosingPrice,
      'change_price': instance.changePrice,
      'ask_bid': instance.askBid,
      'sequential_id': instance.sequentialId,
    };
