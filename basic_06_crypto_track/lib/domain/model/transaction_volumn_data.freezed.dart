// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_volumn_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionVolumnData {
  double get volumn => throw _privateConstructorUsedError;

  /// Create a copy of TransactionVolumnData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionVolumnDataCopyWith<TransactionVolumnData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionVolumnDataCopyWith<$Res> {
  factory $TransactionVolumnDataCopyWith(TransactionVolumnData value,
          $Res Function(TransactionVolumnData) then) =
      _$TransactionVolumnDataCopyWithImpl<$Res, TransactionVolumnData>;
  @useResult
  $Res call({double volumn});
}

/// @nodoc
class _$TransactionVolumnDataCopyWithImpl<$Res,
        $Val extends TransactionVolumnData>
    implements $TransactionVolumnDataCopyWith<$Res> {
  _$TransactionVolumnDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionVolumnData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? volumn = null,
  }) {
    return _then(_value.copyWith(
      volumn: null == volumn
          ? _value.volumn
          : volumn // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionVolumnDataImplCopyWith<$Res>
    implements $TransactionVolumnDataCopyWith<$Res> {
  factory _$$TransactionVolumnDataImplCopyWith(
          _$TransactionVolumnDataImpl value,
          $Res Function(_$TransactionVolumnDataImpl) then) =
      __$$TransactionVolumnDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double volumn});
}

/// @nodoc
class __$$TransactionVolumnDataImplCopyWithImpl<$Res>
    extends _$TransactionVolumnDataCopyWithImpl<$Res,
        _$TransactionVolumnDataImpl>
    implements _$$TransactionVolumnDataImplCopyWith<$Res> {
  __$$TransactionVolumnDataImplCopyWithImpl(_$TransactionVolumnDataImpl _value,
      $Res Function(_$TransactionVolumnDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionVolumnData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? volumn = null,
  }) {
    return _then(_$TransactionVolumnDataImpl(
      volumn: null == volumn
          ? _value.volumn
          : volumn // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$TransactionVolumnDataImpl implements _TransactionVolumnData {
  _$TransactionVolumnDataImpl({required this.volumn});

  @override
  final double volumn;

  @override
  String toString() {
    return 'TransactionVolumnData(volumn: $volumn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionVolumnDataImpl &&
            (identical(other.volumn, volumn) || other.volumn == volumn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, volumn);

  /// Create a copy of TransactionVolumnData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionVolumnDataImplCopyWith<_$TransactionVolumnDataImpl>
      get copyWith => __$$TransactionVolumnDataImplCopyWithImpl<
          _$TransactionVolumnDataImpl>(this, _$identity);
}

abstract class _TransactionVolumnData implements TransactionVolumnData {
  factory _TransactionVolumnData({required final double volumn}) =
      _$TransactionVolumnDataImpl;

  @override
  double get volumn;

  /// Create a copy of TransactionVolumnData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionVolumnDataImplCopyWith<_$TransactionVolumnDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
