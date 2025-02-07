// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_price_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionPriceData {
  double get price => throw _privateConstructorUsedError;

  /// Create a copy of TransactionPriceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionPriceDataCopyWith<TransactionPriceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionPriceDataCopyWith<$Res> {
  factory $TransactionPriceDataCopyWith(TransactionPriceData value,
          $Res Function(TransactionPriceData) then) =
      _$TransactionPriceDataCopyWithImpl<$Res, TransactionPriceData>;
  @useResult
  $Res call({double price});
}

/// @nodoc
class _$TransactionPriceDataCopyWithImpl<$Res,
        $Val extends TransactionPriceData>
    implements $TransactionPriceDataCopyWith<$Res> {
  _$TransactionPriceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionPriceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionPriceDataImplCopyWith<$Res>
    implements $TransactionPriceDataCopyWith<$Res> {
  factory _$$TransactionPriceDataImplCopyWith(_$TransactionPriceDataImpl value,
          $Res Function(_$TransactionPriceDataImpl) then) =
      __$$TransactionPriceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double price});
}

/// @nodoc
class __$$TransactionPriceDataImplCopyWithImpl<$Res>
    extends _$TransactionPriceDataCopyWithImpl<$Res, _$TransactionPriceDataImpl>
    implements _$$TransactionPriceDataImplCopyWith<$Res> {
  __$$TransactionPriceDataImplCopyWithImpl(_$TransactionPriceDataImpl _value,
      $Res Function(_$TransactionPriceDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionPriceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$TransactionPriceDataImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$TransactionPriceDataImpl implements _TransactionPriceData {
  _$TransactionPriceDataImpl({required this.price});

  @override
  final double price;

  @override
  String toString() {
    return 'TransactionPriceData(price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionPriceDataImpl &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price);

  /// Create a copy of TransactionPriceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionPriceDataImplCopyWith<_$TransactionPriceDataImpl>
      get copyWith =>
          __$$TransactionPriceDataImplCopyWithImpl<_$TransactionPriceDataImpl>(
              this, _$identity);
}

abstract class _TransactionPriceData implements TransactionPriceData {
  factory _TransactionPriceData({required final double price}) =
      _$TransactionPriceDataImpl;

  @override
  double get price;

  /// Create a copy of TransactionPriceData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionPriceDataImplCopyWith<_$TransactionPriceDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
