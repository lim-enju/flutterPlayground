// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Transaction {
  String get market => throw _privateConstructorUsedError;
  bool get isPrimary => throw _privateConstructorUsedError;
  double get highPrice => throw _privateConstructorUsedError;
  double get lowPrice => throw _privateConstructorUsedError;
  List<TransactionPriceData> get currentTradePrice =>
      throw _privateConstructorUsedError;
  List<TransactionVolumnData> get currentTradeVolumn =>
      throw _privateConstructorUsedError;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {String market,
      bool isPrimary,
      double highPrice,
      double lowPrice,
      List<TransactionPriceData> currentTradePrice,
      List<TransactionVolumnData> currentTradeVolumn});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? market = null,
    Object? isPrimary = null,
    Object? highPrice = null,
    Object? lowPrice = null,
    Object? currentTradePrice = null,
    Object? currentTradeVolumn = null,
  }) {
    return _then(_value.copyWith(
      market: null == market
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as String,
      isPrimary: null == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
      highPrice: null == highPrice
          ? _value.highPrice
          : highPrice // ignore: cast_nullable_to_non_nullable
              as double,
      lowPrice: null == lowPrice
          ? _value.lowPrice
          : lowPrice // ignore: cast_nullable_to_non_nullable
              as double,
      currentTradePrice: null == currentTradePrice
          ? _value.currentTradePrice
          : currentTradePrice // ignore: cast_nullable_to_non_nullable
              as List<TransactionPriceData>,
      currentTradeVolumn: null == currentTradeVolumn
          ? _value.currentTradeVolumn
          : currentTradeVolumn // ignore: cast_nullable_to_non_nullable
              as List<TransactionVolumnData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionImplCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$TransactionImplCopyWith(
          _$TransactionImpl value, $Res Function(_$TransactionImpl) then) =
      __$$TransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String market,
      bool isPrimary,
      double highPrice,
      double lowPrice,
      List<TransactionPriceData> currentTradePrice,
      List<TransactionVolumnData> currentTradeVolumn});
}

/// @nodoc
class __$$TransactionImplCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$TransactionImpl>
    implements _$$TransactionImplCopyWith<$Res> {
  __$$TransactionImplCopyWithImpl(
      _$TransactionImpl _value, $Res Function(_$TransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? market = null,
    Object? isPrimary = null,
    Object? highPrice = null,
    Object? lowPrice = null,
    Object? currentTradePrice = null,
    Object? currentTradeVolumn = null,
  }) {
    return _then(_$TransactionImpl(
      market: null == market
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as String,
      isPrimary: null == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
      highPrice: null == highPrice
          ? _value.highPrice
          : highPrice // ignore: cast_nullable_to_non_nullable
              as double,
      lowPrice: null == lowPrice
          ? _value.lowPrice
          : lowPrice // ignore: cast_nullable_to_non_nullable
              as double,
      currentTradePrice: null == currentTradePrice
          ? _value._currentTradePrice
          : currentTradePrice // ignore: cast_nullable_to_non_nullable
              as List<TransactionPriceData>,
      currentTradeVolumn: null == currentTradeVolumn
          ? _value._currentTradeVolumn
          : currentTradeVolumn // ignore: cast_nullable_to_non_nullable
              as List<TransactionVolumnData>,
    ));
  }
}

/// @nodoc

class _$TransactionImpl implements _Transaction {
  _$TransactionImpl(
      {required this.market,
      required this.isPrimary,
      required this.highPrice,
      required this.lowPrice,
      final List<TransactionPriceData> currentTradePrice = const [],
      final List<TransactionVolumnData> currentTradeVolumn = const []})
      : _currentTradePrice = currentTradePrice,
        _currentTradeVolumn = currentTradeVolumn;

  @override
  final String market;
  @override
  final bool isPrimary;
  @override
  final double highPrice;
  @override
  final double lowPrice;
  final List<TransactionPriceData> _currentTradePrice;
  @override
  @JsonKey()
  List<TransactionPriceData> get currentTradePrice {
    if (_currentTradePrice is EqualUnmodifiableListView)
      return _currentTradePrice;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentTradePrice);
  }

  final List<TransactionVolumnData> _currentTradeVolumn;
  @override
  @JsonKey()
  List<TransactionVolumnData> get currentTradeVolumn {
    if (_currentTradeVolumn is EqualUnmodifiableListView)
      return _currentTradeVolumn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentTradeVolumn);
  }

  @override
  String toString() {
    return 'Transaction(market: $market, isPrimary: $isPrimary, highPrice: $highPrice, lowPrice: $lowPrice, currentTradePrice: $currentTradePrice, currentTradeVolumn: $currentTradeVolumn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionImpl &&
            (identical(other.market, market) || other.market == market) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary) &&
            (identical(other.highPrice, highPrice) ||
                other.highPrice == highPrice) &&
            (identical(other.lowPrice, lowPrice) ||
                other.lowPrice == lowPrice) &&
            const DeepCollectionEquality()
                .equals(other._currentTradePrice, _currentTradePrice) &&
            const DeepCollectionEquality()
                .equals(other._currentTradeVolumn, _currentTradeVolumn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      market,
      isPrimary,
      highPrice,
      lowPrice,
      const DeepCollectionEquality().hash(_currentTradePrice),
      const DeepCollectionEquality().hash(_currentTradeVolumn));

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      __$$TransactionImplCopyWithImpl<_$TransactionImpl>(this, _$identity);
}

abstract class _Transaction implements Transaction {
  factory _Transaction(
          {required final String market,
          required final bool isPrimary,
          required final double highPrice,
          required final double lowPrice,
          final List<TransactionPriceData> currentTradePrice,
          final List<TransactionVolumnData> currentTradeVolumn}) =
      _$TransactionImpl;

  @override
  String get market;
  @override
  bool get isPrimary;
  @override
  double get highPrice;
  @override
  double get lowPrice;
  @override
  List<TransactionPriceData> get currentTradePrice;
  @override
  List<TransactionVolumnData> get currentTradeVolumn;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
