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
  bool get isPrimary => throw _privateConstructorUsedError;
  TransactionPriceData get currentTradePrice =>
      throw _privateConstructorUsedError;
  TransactionVolumnData get currentTradeVolumn =>
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
      {bool isPrimary,
      TransactionPriceData currentTradePrice,
      TransactionVolumnData currentTradeVolumn});

  $TransactionPriceDataCopyWith<$Res> get currentTradePrice;
  $TransactionVolumnDataCopyWith<$Res> get currentTradeVolumn;
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
    Object? isPrimary = null,
    Object? currentTradePrice = null,
    Object? currentTradeVolumn = null,
  }) {
    return _then(_value.copyWith(
      isPrimary: null == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
      currentTradePrice: null == currentTradePrice
          ? _value.currentTradePrice
          : currentTradePrice // ignore: cast_nullable_to_non_nullable
              as TransactionPriceData,
      currentTradeVolumn: null == currentTradeVolumn
          ? _value.currentTradeVolumn
          : currentTradeVolumn // ignore: cast_nullable_to_non_nullable
              as TransactionVolumnData,
    ) as $Val);
  }

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionPriceDataCopyWith<$Res> get currentTradePrice {
    return $TransactionPriceDataCopyWith<$Res>(_value.currentTradePrice,
        (value) {
      return _then(_value.copyWith(currentTradePrice: value) as $Val);
    });
  }

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionVolumnDataCopyWith<$Res> get currentTradeVolumn {
    return $TransactionVolumnDataCopyWith<$Res>(_value.currentTradeVolumn,
        (value) {
      return _then(_value.copyWith(currentTradeVolumn: value) as $Val);
    });
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
      {bool isPrimary,
      TransactionPriceData currentTradePrice,
      TransactionVolumnData currentTradeVolumn});

  @override
  $TransactionPriceDataCopyWith<$Res> get currentTradePrice;
  @override
  $TransactionVolumnDataCopyWith<$Res> get currentTradeVolumn;
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
    Object? isPrimary = null,
    Object? currentTradePrice = null,
    Object? currentTradeVolumn = null,
  }) {
    return _then(_$TransactionImpl(
      isPrimary: null == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
      currentTradePrice: null == currentTradePrice
          ? _value.currentTradePrice
          : currentTradePrice // ignore: cast_nullable_to_non_nullable
              as TransactionPriceData,
      currentTradeVolumn: null == currentTradeVolumn
          ? _value.currentTradeVolumn
          : currentTradeVolumn // ignore: cast_nullable_to_non_nullable
              as TransactionVolumnData,
    ));
  }
}

/// @nodoc

class _$TransactionImpl implements _Transaction {
  _$TransactionImpl(
      {required this.isPrimary,
      required this.currentTradePrice,
      required this.currentTradeVolumn});

  @override
  final bool isPrimary;
  @override
  final TransactionPriceData currentTradePrice;
  @override
  final TransactionVolumnData currentTradeVolumn;

  @override
  String toString() {
    return 'Transaction(isPrimary: $isPrimary, currentTradePrice: $currentTradePrice, currentTradeVolumn: $currentTradeVolumn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionImpl &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary) &&
            (identical(other.currentTradePrice, currentTradePrice) ||
                other.currentTradePrice == currentTradePrice) &&
            (identical(other.currentTradeVolumn, currentTradeVolumn) ||
                other.currentTradeVolumn == currentTradeVolumn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isPrimary, currentTradePrice, currentTradeVolumn);

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
          {required final bool isPrimary,
          required final TransactionPriceData currentTradePrice,
          required final TransactionVolumnData currentTradeVolumn}) =
      _$TransactionImpl;

  @override
  bool get isPrimary;
  @override
  TransactionPriceData get currentTradePrice;
  @override
  TransactionVolumnData get currentTradeVolumn;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
