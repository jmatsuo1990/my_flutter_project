// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutrient_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NutrientEntity {
  NutrientType get type => throw _privateConstructorUsedError; // 栄養素の種類
  double get amount => throw _privateConstructorUsedError;

  /// Create a copy of NutrientEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NutrientEntityCopyWith<NutrientEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutrientEntityCopyWith<$Res> {
  factory $NutrientEntityCopyWith(
          NutrientEntity value, $Res Function(NutrientEntity) then) =
      _$NutrientEntityCopyWithImpl<$Res, NutrientEntity>;
  @useResult
  $Res call({NutrientType type, double amount});
}

/// @nodoc
class _$NutrientEntityCopyWithImpl<$Res, $Val extends NutrientEntity>
    implements $NutrientEntityCopyWith<$Res> {
  _$NutrientEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NutrientEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NutrientType,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NutrientEntityImplCopyWith<$Res>
    implements $NutrientEntityCopyWith<$Res> {
  factory _$$NutrientEntityImplCopyWith(_$NutrientEntityImpl value,
          $Res Function(_$NutrientEntityImpl) then) =
      __$$NutrientEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NutrientType type, double amount});
}

/// @nodoc
class __$$NutrientEntityImplCopyWithImpl<$Res>
    extends _$NutrientEntityCopyWithImpl<$Res, _$NutrientEntityImpl>
    implements _$$NutrientEntityImplCopyWith<$Res> {
  __$$NutrientEntityImplCopyWithImpl(
      _$NutrientEntityImpl _value, $Res Function(_$NutrientEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of NutrientEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? amount = null,
  }) {
    return _then(_$NutrientEntityImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NutrientType,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$NutrientEntityImpl implements _NutrientEntity {
  const _$NutrientEntityImpl({required this.type, required this.amount});

  @override
  final NutrientType type;
// 栄養素の種類
  @override
  final double amount;

  @override
  String toString() {
    return 'NutrientEntity(type: $type, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NutrientEntityImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, amount);

  /// Create a copy of NutrientEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NutrientEntityImplCopyWith<_$NutrientEntityImpl> get copyWith =>
      __$$NutrientEntityImplCopyWithImpl<_$NutrientEntityImpl>(
          this, _$identity);
}

abstract class _NutrientEntity implements NutrientEntity {
  const factory _NutrientEntity(
      {required final NutrientType type,
      required final double amount}) = _$NutrientEntityImpl;

  @override
  NutrientType get type; // 栄養素の種類
  @override
  double get amount;

  /// Create a copy of NutrientEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NutrientEntityImplCopyWith<_$NutrientEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
