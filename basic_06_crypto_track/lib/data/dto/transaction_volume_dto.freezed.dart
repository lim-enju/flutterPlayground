// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_volume_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionVolumeDto _$TransactionVolumeDtoFromJson(Map<String, dynamic> json) {
  return _TransactionVolumeDto.fromJson(json);
}

/// @nodoc
mixin _$TransactionVolumeDto {
  @JsonKey(name: 'market')
  String get market => throw _privateConstructorUsedError;
  @JsonKey(name: 'trade_date_utc')
  String get tradeDateUtc => throw _privateConstructorUsedError;
  @JsonKey(name: 'trade_time_utc')
  String get tradeTimeUtc => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp')
  int get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'trade_price')
  double get tradePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'trade_volume')
  double get tradeVolume => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_closing_price')
  double get prevClosingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'change_price')
  double get changePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'ask_bid')
  String get askBid => throw _privateConstructorUsedError;
  @JsonKey(name: 'sequential_id')
  int get sequentialId => throw _privateConstructorUsedError;

  /// Serializes this TransactionVolumeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionVolumeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionVolumeDtoCopyWith<TransactionVolumeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionVolumeDtoCopyWith<$Res> {
  factory $TransactionVolumeDtoCopyWith(TransactionVolumeDto value,
          $Res Function(TransactionVolumeDto) then) =
      _$TransactionVolumeDtoCopyWithImpl<$Res, TransactionVolumeDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'market') String market,
      @JsonKey(name: 'trade_date_utc') String tradeDateUtc,
      @JsonKey(name: 'trade_time_utc') String tradeTimeUtc,
      @JsonKey(name: 'timestamp') int timestamp,
      @JsonKey(name: 'trade_price') double tradePrice,
      @JsonKey(name: 'trade_volume') double tradeVolume,
      @JsonKey(name: 'prev_closing_price') double prevClosingPrice,
      @JsonKey(name: 'change_price') double changePrice,
      @JsonKey(name: 'ask_bid') String askBid,
      @JsonKey(name: 'sequential_id') int sequentialId});
}

/// @nodoc
class _$TransactionVolumeDtoCopyWithImpl<$Res,
        $Val extends TransactionVolumeDto>
    implements $TransactionVolumeDtoCopyWith<$Res> {
  _$TransactionVolumeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionVolumeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? market = null,
    Object? tradeDateUtc = null,
    Object? tradeTimeUtc = null,
    Object? timestamp = null,
    Object? tradePrice = null,
    Object? tradeVolume = null,
    Object? prevClosingPrice = null,
    Object? changePrice = null,
    Object? askBid = null,
    Object? sequentialId = null,
  }) {
    return _then(_value.copyWith(
      market: null == market
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as String,
      tradeDateUtc: null == tradeDateUtc
          ? _value.tradeDateUtc
          : tradeDateUtc // ignore: cast_nullable_to_non_nullable
              as String,
      tradeTimeUtc: null == tradeTimeUtc
          ? _value.tradeTimeUtc
          : tradeTimeUtc // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      tradePrice: null == tradePrice
          ? _value.tradePrice
          : tradePrice // ignore: cast_nullable_to_non_nullable
              as double,
      tradeVolume: null == tradeVolume
          ? _value.tradeVolume
          : tradeVolume // ignore: cast_nullable_to_non_nullable
              as double,
      prevClosingPrice: null == prevClosingPrice
          ? _value.prevClosingPrice
          : prevClosingPrice // ignore: cast_nullable_to_non_nullable
              as double,
      changePrice: null == changePrice
          ? _value.changePrice
          : changePrice // ignore: cast_nullable_to_non_nullable
              as double,
      askBid: null == askBid
          ? _value.askBid
          : askBid // ignore: cast_nullable_to_non_nullable
              as String,
      sequentialId: null == sequentialId
          ? _value.sequentialId
          : sequentialId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionVolumeDtoImplCopyWith<$Res>
    implements $TransactionVolumeDtoCopyWith<$Res> {
  factory _$$TransactionVolumeDtoImplCopyWith(_$TransactionVolumeDtoImpl value,
          $Res Function(_$TransactionVolumeDtoImpl) then) =
      __$$TransactionVolumeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'market') String market,
      @JsonKey(name: 'trade_date_utc') String tradeDateUtc,
      @JsonKey(name: 'trade_time_utc') String tradeTimeUtc,
      @JsonKey(name: 'timestamp') int timestamp,
      @JsonKey(name: 'trade_price') double tradePrice,
      @JsonKey(name: 'trade_volume') double tradeVolume,
      @JsonKey(name: 'prev_closing_price') double prevClosingPrice,
      @JsonKey(name: 'change_price') double changePrice,
      @JsonKey(name: 'ask_bid') String askBid,
      @JsonKey(name: 'sequential_id') int sequentialId});
}

/// @nodoc
class __$$TransactionVolumeDtoImplCopyWithImpl<$Res>
    extends _$TransactionVolumeDtoCopyWithImpl<$Res, _$TransactionVolumeDtoImpl>
    implements _$$TransactionVolumeDtoImplCopyWith<$Res> {
  __$$TransactionVolumeDtoImplCopyWithImpl(_$TransactionVolumeDtoImpl _value,
      $Res Function(_$TransactionVolumeDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionVolumeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? market = null,
    Object? tradeDateUtc = null,
    Object? tradeTimeUtc = null,
    Object? timestamp = null,
    Object? tradePrice = null,
    Object? tradeVolume = null,
    Object? prevClosingPrice = null,
    Object? changePrice = null,
    Object? askBid = null,
    Object? sequentialId = null,
  }) {
    return _then(_$TransactionVolumeDtoImpl(
      market: null == market
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as String,
      tradeDateUtc: null == tradeDateUtc
          ? _value.tradeDateUtc
          : tradeDateUtc // ignore: cast_nullable_to_non_nullable
              as String,
      tradeTimeUtc: null == tradeTimeUtc
          ? _value.tradeTimeUtc
          : tradeTimeUtc // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      tradePrice: null == tradePrice
          ? _value.tradePrice
          : tradePrice // ignore: cast_nullable_to_non_nullable
              as double,
      tradeVolume: null == tradeVolume
          ? _value.tradeVolume
          : tradeVolume // ignore: cast_nullable_to_non_nullable
              as double,
      prevClosingPrice: null == prevClosingPrice
          ? _value.prevClosingPrice
          : prevClosingPrice // ignore: cast_nullable_to_non_nullable
              as double,
      changePrice: null == changePrice
          ? _value.changePrice
          : changePrice // ignore: cast_nullable_to_non_nullable
              as double,
      askBid: null == askBid
          ? _value.askBid
          : askBid // ignore: cast_nullable_to_non_nullable
              as String,
      sequentialId: null == sequentialId
          ? _value.sequentialId
          : sequentialId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionVolumeDtoImpl extends _TransactionVolumeDto {
  _$TransactionVolumeDtoImpl(
      {@JsonKey(name: 'market') required this.market,
      @JsonKey(name: 'trade_date_utc') required this.tradeDateUtc,
      @JsonKey(name: 'trade_time_utc') required this.tradeTimeUtc,
      @JsonKey(name: 'timestamp') required this.timestamp,
      @JsonKey(name: 'trade_price') required this.tradePrice,
      @JsonKey(name: 'trade_volume') required this.tradeVolume,
      @JsonKey(name: 'prev_closing_price') required this.prevClosingPrice,
      @JsonKey(name: 'change_price') required this.changePrice,
      @JsonKey(name: 'ask_bid') required this.askBid,
      @JsonKey(name: 'sequential_id') required this.sequentialId})
      : super._();

  factory _$TransactionVolumeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionVolumeDtoImplFromJson(json);

  @override
  @JsonKey(name: 'market')
  final String market;
  @override
  @JsonKey(name: 'trade_date_utc')
  final String tradeDateUtc;
  @override
  @JsonKey(name: 'trade_time_utc')
  final String tradeTimeUtc;
  @override
  @JsonKey(name: 'timestamp')
  final int timestamp;
  @override
  @JsonKey(name: 'trade_price')
  final double tradePrice;
  @override
  @JsonKey(name: 'trade_volume')
  final double tradeVolume;
  @override
  @JsonKey(name: 'prev_closing_price')
  final double prevClosingPrice;
  @override
  @JsonKey(name: 'change_price')
  final double changePrice;
  @override
  @JsonKey(name: 'ask_bid')
  final String askBid;
  @override
  @JsonKey(name: 'sequential_id')
  final int sequentialId;

  @override
  String toString() {
    return 'TransactionVolumeDto(market: $market, tradeDateUtc: $tradeDateUtc, tradeTimeUtc: $tradeTimeUtc, timestamp: $timestamp, tradePrice: $tradePrice, tradeVolume: $tradeVolume, prevClosingPrice: $prevClosingPrice, changePrice: $changePrice, askBid: $askBid, sequentialId: $sequentialId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionVolumeDtoImpl &&
            (identical(other.market, market) || other.market == market) &&
            (identical(other.tradeDateUtc, tradeDateUtc) ||
                other.tradeDateUtc == tradeDateUtc) &&
            (identical(other.tradeTimeUtc, tradeTimeUtc) ||
                other.tradeTimeUtc == tradeTimeUtc) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.tradePrice, tradePrice) ||
                other.tradePrice == tradePrice) &&
            (identical(other.tradeVolume, tradeVolume) ||
                other.tradeVolume == tradeVolume) &&
            (identical(other.prevClosingPrice, prevClosingPrice) ||
                other.prevClosingPrice == prevClosingPrice) &&
            (identical(other.changePrice, changePrice) ||
                other.changePrice == changePrice) &&
            (identical(other.askBid, askBid) || other.askBid == askBid) &&
            (identical(other.sequentialId, sequentialId) ||
                other.sequentialId == sequentialId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      market,
      tradeDateUtc,
      tradeTimeUtc,
      timestamp,
      tradePrice,
      tradeVolume,
      prevClosingPrice,
      changePrice,
      askBid,
      sequentialId);

  /// Create a copy of TransactionVolumeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionVolumeDtoImplCopyWith<_$TransactionVolumeDtoImpl>
      get copyWith =>
          __$$TransactionVolumeDtoImplCopyWithImpl<_$TransactionVolumeDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionVolumeDtoImplToJson(
      this,
    );
  }
}

abstract class _TransactionVolumeDto extends TransactionVolumeDto {
  factory _TransactionVolumeDto(
          {@JsonKey(name: 'market') required final String market,
          @JsonKey(name: 'trade_date_utc') required final String tradeDateUtc,
          @JsonKey(name: 'trade_time_utc') required final String tradeTimeUtc,
          @JsonKey(name: 'timestamp') required final int timestamp,
          @JsonKey(name: 'trade_price') required final double tradePrice,
          @JsonKey(name: 'trade_volume') required final double tradeVolume,
          @JsonKey(name: 'prev_closing_price')
          required final double prevClosingPrice,
          @JsonKey(name: 'change_price') required final double changePrice,
          @JsonKey(name: 'ask_bid') required final String askBid,
          @JsonKey(name: 'sequential_id') required final int sequentialId}) =
      _$TransactionVolumeDtoImpl;
  _TransactionVolumeDto._() : super._();

  factory _TransactionVolumeDto.fromJson(Map<String, dynamic> json) =
      _$TransactionVolumeDtoImpl.fromJson;

  @override
  @JsonKey(name: 'market')
  String get market;
  @override
  @JsonKey(name: 'trade_date_utc')
  String get tradeDateUtc;
  @override
  @JsonKey(name: 'trade_time_utc')
  String get tradeTimeUtc;
  @override
  @JsonKey(name: 'timestamp')
  int get timestamp;
  @override
  @JsonKey(name: 'trade_price')
  double get tradePrice;
  @override
  @JsonKey(name: 'trade_volume')
  double get tradeVolume;
  @override
  @JsonKey(name: 'prev_closing_price')
  double get prevClosingPrice;
  @override
  @JsonKey(name: 'change_price')
  double get changePrice;
  @override
  @JsonKey(name: 'ask_bid')
  String get askBid;
  @override
  @JsonKey(name: 'sequential_id')
  int get sequentialId;

  /// Create a copy of TransactionVolumeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionVolumeDtoImplCopyWith<_$TransactionVolumeDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
