// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pick_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PickModel {
  List<HeroRateModel> get radiant => throw _privateConstructorUsedError;
  List<HeroRateModel> get dire => throw _privateConstructorUsedError;
  double get radiantRate => throw _privateConstructorUsedError;
  double get direRate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PickModelCopyWith<PickModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickModelCopyWith<$Res> {
  factory $PickModelCopyWith(PickModel value, $Res Function(PickModel) then) =
      _$PickModelCopyWithImpl<$Res, PickModel>;
  @useResult
  $Res call(
      {List<HeroRateModel> radiant,
      List<HeroRateModel> dire,
      double radiantRate,
      double direRate});
}

/// @nodoc
class _$PickModelCopyWithImpl<$Res, $Val extends PickModel>
    implements $PickModelCopyWith<$Res> {
  _$PickModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? radiant = null,
    Object? dire = null,
    Object? radiantRate = null,
    Object? direRate = null,
  }) {
    return _then(_value.copyWith(
      radiant: null == radiant
          ? _value.radiant
          : radiant // ignore: cast_nullable_to_non_nullable
              as List<HeroRateModel>,
      dire: null == dire
          ? _value.dire
          : dire // ignore: cast_nullable_to_non_nullable
              as List<HeroRateModel>,
      radiantRate: null == radiantRate
          ? _value.radiantRate
          : radiantRate // ignore: cast_nullable_to_non_nullable
              as double,
      direRate: null == direRate
          ? _value.direRate
          : direRate // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PickModelImplCopyWith<$Res>
    implements $PickModelCopyWith<$Res> {
  factory _$$PickModelImplCopyWith(
          _$PickModelImpl value, $Res Function(_$PickModelImpl) then) =
      __$$PickModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<HeroRateModel> radiant,
      List<HeroRateModel> dire,
      double radiantRate,
      double direRate});
}

/// @nodoc
class __$$PickModelImplCopyWithImpl<$Res>
    extends _$PickModelCopyWithImpl<$Res, _$PickModelImpl>
    implements _$$PickModelImplCopyWith<$Res> {
  __$$PickModelImplCopyWithImpl(
      _$PickModelImpl _value, $Res Function(_$PickModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? radiant = null,
    Object? dire = null,
    Object? radiantRate = null,
    Object? direRate = null,
  }) {
    return _then(_$PickModelImpl(
      radiant: null == radiant
          ? _value._radiant
          : radiant // ignore: cast_nullable_to_non_nullable
              as List<HeroRateModel>,
      dire: null == dire
          ? _value._dire
          : dire // ignore: cast_nullable_to_non_nullable
              as List<HeroRateModel>,
      radiantRate: null == radiantRate
          ? _value.radiantRate
          : radiantRate // ignore: cast_nullable_to_non_nullable
              as double,
      direRate: null == direRate
          ? _value.direRate
          : direRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$PickModelImpl implements _PickModel {
  const _$PickModelImpl(
      {final List<HeroRateModel> radiant = const [],
      final List<HeroRateModel> dire = const [],
      this.radiantRate = 50.0,
      this.direRate = 50.0})
      : _radiant = radiant,
        _dire = dire;

  final List<HeroRateModel> _radiant;
  @override
  @JsonKey()
  List<HeroRateModel> get radiant {
    if (_radiant is EqualUnmodifiableListView) return _radiant;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_radiant);
  }

  final List<HeroRateModel> _dire;
  @override
  @JsonKey()
  List<HeroRateModel> get dire {
    if (_dire is EqualUnmodifiableListView) return _dire;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dire);
  }

  @override
  @JsonKey()
  final double radiantRate;
  @override
  @JsonKey()
  final double direRate;

  @override
  String toString() {
    return 'PickModel(radiant: $radiant, dire: $dire, radiantRate: $radiantRate, direRate: $direRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickModelImpl &&
            const DeepCollectionEquality().equals(other._radiant, _radiant) &&
            const DeepCollectionEquality().equals(other._dire, _dire) &&
            (identical(other.radiantRate, radiantRate) ||
                other.radiantRate == radiantRate) &&
            (identical(other.direRate, direRate) ||
                other.direRate == direRate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_radiant),
      const DeepCollectionEquality().hash(_dire),
      radiantRate,
      direRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickModelImplCopyWith<_$PickModelImpl> get copyWith =>
      __$$PickModelImplCopyWithImpl<_$PickModelImpl>(this, _$identity);
}

abstract class _PickModel implements PickModel {
  const factory _PickModel(
      {final List<HeroRateModel> radiant,
      final List<HeroRateModel> dire,
      final double radiantRate,
      final double direRate}) = _$PickModelImpl;

  @override
  List<HeroRateModel> get radiant;
  @override
  List<HeroRateModel> get dire;
  @override
  double get radiantRate;
  @override
  double get direRate;
  @override
  @JsonKey(ignore: true)
  _$$PickModelImplCopyWith<_$PickModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
