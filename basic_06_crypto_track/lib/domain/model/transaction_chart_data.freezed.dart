// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_chart_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionChartData {
  List<TransactionPriceData> get currentTradePrice =>
      throw _privateConstructorUsedError;
  List<TransactionVolumnData> get currentTradeVolumn =>
      throw _privateConstructorUsedError;

  /// Create a copy of TransactionChartData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionChartDataCopyWith<TransactionChartData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionChartDataCopyWith<$Res> {
  factory $TransactionChartDataCopyWith(TransactionChartData value,
          $Res Function(TransactionChartData) then) =
      _$TransactionChartDataCopyWithImpl<$Res, TransactionChartData>;
  @useResult
  $Res call(
      {List<TransactionPriceData> currentTradePrice,
      List<TransactionVolumnData> currentTradeVolumn});
}

/// @nodoc
class _$TransactionChartDataCopyWithImpl<$Res,
        $Val extends TransactionChartData>
    implements $TransactionChartDataCopyWith<$Res> {
  _$TransactionChartDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionChartData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTradePrice = null,
    Object? currentTradeVolumn = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$TransactionChartDataImplCopyWith<$Res>
    implements $TransactionChartDataCopyWith<$Res> {
  factory _$$TransactionChartDataImplCopyWith(_$TransactionChartDataImpl value,
          $Res Function(_$TransactionChartDataImpl) then) =
      __$$TransactionChartDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TransactionPriceData> currentTradePrice,
      List<TransactionVolumnData> currentTradeVolumn});
}

/// @nodoc
class __$$TransactionChartDataImplCopyWithImpl<$Res>
    extends _$TransactionChartDataCopyWithImpl<$Res, _$TransactionChartDataImpl>
    implements _$$TransactionChartDataImplCopyWith<$Res> {
  __$$TransactionChartDataImplCopyWithImpl(_$TransactionChartDataImpl _value,
      $Res Function(_$TransactionChartDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionChartData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTradePrice = null,
    Object? currentTradeVolumn = null,
  }) {
    return _then(_$TransactionChartDataImpl(
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

class _$TransactionChartDataImpl implements _TransactionChartData {
  _$TransactionChartDataImpl(
      {required final List<TransactionPriceData> currentTradePrice,
      required final List<TransactionVolumnData> currentTradeVolumn})
      : _currentTradePrice = currentTradePrice,
        _currentTradeVolumn = currentTradeVolumn;

  final List<TransactionPriceData> _currentTradePrice;
  @override
  List<TransactionPriceData> get currentTradePrice {
    if (_currentTradePrice is EqualUnmodifiableListView)
      return _currentTradePrice;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentTradePrice);
  }

  final List<TransactionVolumnData> _currentTradeVolumn;
  @override
  List<TransactionVolumnData> get currentTradeVolumn {
    if (_currentTradeVolumn is EqualUnmodifiableListView)
      return _currentTradeVolumn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentTradeVolumn);
  }

  @override
  String toString() {
    return 'TransactionChartData(currentTradePrice: $currentTradePrice, currentTradeVolumn: $currentTradeVolumn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionChartDataImpl &&
            const DeepCollectionEquality()
                .equals(other._currentTradePrice, _currentTradePrice) &&
            const DeepCollectionEquality()
                .equals(other._currentTradeVolumn, _currentTradeVolumn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_currentTradePrice),
      const DeepCollectionEquality().hash(_currentTradeVolumn));

  /// Create a copy of TransactionChartData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionChartDataImplCopyWith<_$TransactionChartDataImpl>
      get copyWith =>
          __$$TransactionChartDataImplCopyWithImpl<_$TransactionChartDataImpl>(
              this, _$identity);
}

abstract class _TransactionChartData implements TransactionChartData {
  factory _TransactionChartData(
          {required final List<TransactionPriceData> currentTradePrice,
          required final List<TransactionVolumnData> currentTradeVolumn}) =
      _$TransactionChartDataImpl;

  @override
  List<TransactionPriceData> get currentTradePrice;
  @override
  List<TransactionVolumnData> get currentTradeVolumn;

  /// Create a copy of TransactionChartData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionChartDataImplCopyWith<_$TransactionChartDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
