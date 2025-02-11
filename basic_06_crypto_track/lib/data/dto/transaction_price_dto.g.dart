// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_price_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionPriceDtoImpl _$$TransactionPriceDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionPriceDtoImpl(
      market: json['market'] as String,
      trade_date: json['trade_date'] as String,
      trade_time: json['trade_time'] as String,
      trade_date_kst: json['trade_date_kst'] as String,
      trade_time_kst: json['trade_time_kst'] as String,
      trade_timestamp: (json['trade_timestamp'] as num).toInt(),
      opening_price: (json['opening_price'] as num).toDouble(),
      high_price: (json['high_price'] as num).toDouble(),
      low_price: (json['low_price'] as num).toDouble(),
      trade_price: (json['trade_price'] as num).toDouble(),
      prev_closing_price: (json['prev_closing_price'] as num).toDouble(),
      change: json['change'] as String,
      change_price: (json['change_price'] as num).toDouble(),
      change_rate: (json['change_rate'] as num).toDouble(),
      signed_change_price: (json['signed_change_price'] as num).toDouble(),
      signed_change_rate: (json['signed_change_rate'] as num).toDouble(),
      trade_volume: (json['trade_volume'] as num).toDouble(),
      acc_trade_price: (json['acc_trade_price'] as num).toDouble(),
      acc_trade_price_24h: (json['acc_trade_price_24h'] as num).toDouble(),
      acc_trade_volume: (json['acc_trade_volume'] as num).toDouble(),
      acc_trade_volume_24h: (json['acc_trade_volume_24h'] as num).toDouble(),
      highest_52_week_price: (json['highest_52_week_price'] as num).toDouble(),
      highest_52_week_date: json['highest_52_week_date'] as String,
      lowest_52_week_price: (json['lowest_52_week_price'] as num).toDouble(),
      lowest_52_week_date: json['lowest_52_week_date'] as String,
      timestamp: (json['timestamp'] as num).toInt(),
    );

Map<String, dynamic> _$$TransactionPriceDtoImplToJson(
        _$TransactionPriceDtoImpl instance) =>
    <String, dynamic>{
      'market': instance.market,
      'trade_date': instance.trade_date,
      'trade_time': instance.trade_time,
      'trade_date_kst': instance.trade_date_kst,
      'trade_time_kst': instance.trade_time_kst,
      'trade_timestamp': instance.trade_timestamp,
      'opening_price': instance.opening_price,
      'high_price': instance.high_price,
      'low_price': instance.low_price,
      'trade_price': instance.trade_price,
      'prev_closing_price': instance.prev_closing_price,
      'change': instance.change,
      'change_price': instance.change_price,
      'change_rate': instance.change_rate,
      'signed_change_price': instance.signed_change_price,
      'signed_change_rate': instance.signed_change_rate,
      'trade_volume': instance.trade_volume,
      'acc_trade_price': instance.acc_trade_price,
      'acc_trade_price_24h': instance.acc_trade_price_24h,
      'acc_trade_volume': instance.acc_trade_volume,
      'acc_trade_volume_24h': instance.acc_trade_volume_24h,
      'highest_52_week_price': instance.highest_52_week_price,
      'highest_52_week_date': instance.highest_52_week_date,
      'lowest_52_week_price': instance.lowest_52_week_price,
      'lowest_52_week_date': instance.lowest_52_week_date,
      'timestamp': instance.timestamp,
    };
