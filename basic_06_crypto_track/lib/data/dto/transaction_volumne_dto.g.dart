// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_volumne_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionVolumneDtoImpl _$$TransactionVolumneDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionVolumneDtoImpl(
      market: json['market'] as String,
      tradeDateUtc: json['tradeDateUtc'] as String,
      tradeTimeUtc: json['tradeTimeUtc'] as String,
      timestamp: (json['timestamp'] as num).toInt(),
      tradePrice: (json['tradePrice'] as num).toDouble(),
      tradeVolume: (json['tradeVolume'] as num).toDouble(),
      prevClosingPrice: (json['prevClosingPrice'] as num).toDouble(),
      changePrice: (json['changePrice'] as num).toDouble(),
      askBid: json['askBid'] as String,
      sequentialId: (json['sequentialId'] as num).toInt(),
    );

Map<String, dynamic> _$$TransactionVolumneDtoImplToJson(
        _$TransactionVolumneDtoImpl instance) =>
    <String, dynamic>{
      'market': instance.market,
      'tradeDateUtc': instance.tradeDateUtc,
      'tradeTimeUtc': instance.tradeTimeUtc,
      'timestamp': instance.timestamp,
      'tradePrice': instance.tradePrice,
      'tradeVolume': instance.tradeVolume,
      'prevClosingPrice': instance.prevClosingPrice,
      'changePrice': instance.changePrice,
      'askBid': instance.askBid,
      'sequentialId': instance.sequentialId,
    };
