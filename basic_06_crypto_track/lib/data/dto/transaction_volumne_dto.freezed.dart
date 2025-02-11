// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_volumne_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionVolumneDto _$TransactionVolumneDtoFromJson(
    Map<String, dynamic> json) {
  return _TransactionVolumneDto.fromJson(json);
}

/// @nodoc
mixin _$TransactionVolumneDto {
  String get market => throw _privateConstructorUsedError;
  String get tradeDateUtc => throw _privateConstructorUsedError;
  String get tradeTimeUtc => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;
  double get tradePrice => throw _privateConstructorUsedError;
  double get tradeVolume => throw _privateConstructorUsedError;
  double get prevClosingPrice => throw _privateConstructorUsedError;
  double get changePrice => throw _privateConstructorUsedError;
  String get askBid => throw _privateConstructorUsedError;
  int get sequentialId => throw _privateConstructorUsedError;

  /// Serializes this TransactionVolumneDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionVolumneDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionVolumneDtoCopyWith<TransactionVolumneDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionVolumneDtoCopyWith<$Res> {
  factory $TransactionVolumneDtoCopyWith(TransactionVolumneDto value,
          $Res Function(TransactionVolumneDto) then) =
      _$TransactionVolumneDtoCopyWithImpl<$Res, TransactionVolumneDto>;
  @useResult
  $Res call(
      {String market,
      String tradeDateUtc,
      String tradeTimeUtc,
      int timestamp,
      double tradePrice,
      double tradeVolume,
      double prevClosingPrice,
      double changePrice,
      String askBid,
      int sequentialId});
}

/// @nodoc
class _$TransactionVolumneDtoCopyWithImpl<$Res,
        $Val extends TransactionVolumneDto>
    implements $TransactionVolumneDtoCopyWith<$Res> {
  _$TransactionVolumneDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionVolumneDto
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
abstract class _$$TransactionVolumneDtoImplCopyWith<$Res>
    implements $TransactionVolumneDtoCopyWith<$Res> {
  factory _$$TransactionVolumneDtoImplCopyWith(
          _$TransactionVolumneDtoImpl value,
          $Res Function(_$TransactionVolumneDtoImpl) then) =
      __$$TransactionVolumneDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String market,
      String tradeDateUtc,
      String tradeTimeUtc,
      int timestamp,
      double tradePrice,
      double tradeVolume,
      double prevClosingPrice,
      double changePrice,
      String askBid,
      int sequentialId});
}

/// @nodoc
class __$$TransactionVolumneDtoImplCopyWithImpl<$Res>
    extends _$TransactionVolumneDtoCopyWithImpl<$Res,
        _$TransactionVolumneDtoImpl>
    implements _$$TransactionVolumneDtoImplCopyWith<$Res> {
  __$$TransactionVolumneDtoImplCopyWithImpl(_$TransactionVolumneDtoImpl _value,
      $Res Function(_$TransactionVolumneDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionVolumneDto
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
    return _then(_$TransactionVolumneDtoImpl(
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
class _$TransactionVolumneDtoImpl extends _TransactionVolumneDto {
  const _$TransactionVolumneDtoImpl(
      {required this.market,
      required this.tradeDateUtc,
      required this.tradeTimeUtc,
      required this.timestamp,
      required this.tradePrice,
      required this.tradeVolume,
      required this.prevClosingPrice,
      required this.changePrice,
      required this.askBid,
      required this.sequentialId})
      : super._();

  factory _$TransactionVolumneDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionVolumneDtoImplFromJson(json);

  @override
  final String market;
  @override
  final String tradeDateUtc;
  @override
  final String tradeTimeUtc;
  @override
  final int timestamp;
  @override
  final double tradePrice;
  @override
  final double tradeVolume;
  @override
  final double prevClosingPrice;
  @override
  final double changePrice;
  @override
  final String askBid;
  @override
  final int sequentialId;

  @override
  String toString() {
    return 'TransactionVolumneDto(market: $market, tradeDateUtc: $tradeDateUtc, tradeTimeUtc: $tradeTimeUtc, timestamp: $timestamp, tradePrice: $tradePrice, tradeVolume: $tradeVolume, prevClosingPrice: $prevClosingPrice, changePrice: $changePrice, askBid: $askBid, sequentialId: $sequentialId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionVolumneDtoImpl &&
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

  /// Create a copy of TransactionVolumneDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionVolumneDtoImplCopyWith<_$TransactionVolumneDtoImpl>
      get copyWith => __$$TransactionVolumneDtoImplCopyWithImpl<
          _$TransactionVolumneDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionVolumneDtoImplToJson(
      this,
    );
  }
}

abstract class _TransactionVolumneDto extends TransactionVolumneDto {
  const factory _TransactionVolumneDto(
      {required final String market,
      required final String tradeDateUtc,
      required final String tradeTimeUtc,
      required final int timestamp,
      required final double tradePrice,
      required final double tradeVolume,
      required final double prevClosingPrice,
      required final double changePrice,
      required final String askBid,
      required final int sequentialId}) = _$TransactionVolumneDtoImpl;
  const _TransactionVolumneDto._() : super._();

  factory _TransactionVolumneDto.fromJson(Map<String, dynamic> json) =
      _$TransactionVolumneDtoImpl.fromJson;

  @override
  String get market;
  @override
  String get tradeDateUtc;
  @override
  String get tradeTimeUtc;
  @override
  int get timestamp;
  @override
  double get tradePrice;
  @override
  double get tradeVolume;
  @override
  double get prevClosingPrice;
  @override
  double get changePrice;
  @override
  String get askBid;
  @override
  int get sequentialId;

  /// Create a copy of TransactionVolumneDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionVolumneDtoImplCopyWith<_$TransactionVolumneDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
