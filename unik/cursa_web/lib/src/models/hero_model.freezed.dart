// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hero_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HeroRateModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HeroRateModelCopyWith<HeroRateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeroRateModelCopyWith<$Res> {
  factory $HeroRateModelCopyWith(
          HeroRateModel value, $Res Function(HeroRateModel) then) =
      _$HeroRateModelCopyWithImpl<$Res, HeroRateModel>;
  @useResult
  $Res call({String id, String name, String url, double rate});
}

/// @nodoc
class _$HeroRateModelCopyWithImpl<$Res, $Val extends HeroRateModel>
    implements $HeroRateModelCopyWith<$Res> {
  _$HeroRateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? rate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeroRateModelImplCopyWith<$Res>
    implements $HeroRateModelCopyWith<$Res> {
  factory _$$HeroRateModelImplCopyWith(
          _$HeroRateModelImpl value, $Res Function(_$HeroRateModelImpl) then) =
      __$$HeroRateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String url, double rate});
}

/// @nodoc
class __$$HeroRateModelImplCopyWithImpl<$Res>
    extends _$HeroRateModelCopyWithImpl<$Res, _$HeroRateModelImpl>
    implements _$$HeroRateModelImplCopyWith<$Res> {
  __$$HeroRateModelImplCopyWithImpl(
      _$HeroRateModelImpl _value, $Res Function(_$HeroRateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? rate = null,
  }) {
    return _then(_$HeroRateModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$HeroRateModelImpl implements _HeroRateModel {
  const _$HeroRateModelImpl(
      {required this.id,
      required this.name,
      required this.url,
      required this.rate});

  @override
  final String id;
  @override
  final String name;
  @override
  final String url;
  @override
  final double rate;

  @override
  String toString() {
    return 'HeroRateModel(id: $id, name: $name, url: $url, rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeroRateModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, url, rate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HeroRateModelImplCopyWith<_$HeroRateModelImpl> get copyWith =>
      __$$HeroRateModelImplCopyWithImpl<_$HeroRateModelImpl>(this, _$identity);
}

abstract class _HeroRateModel implements HeroRateModel {
  const factory _HeroRateModel(
      {required final String id,
      required final String name,
      required final String url,
      required final double rate}) = _$HeroRateModelImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get url;
  @override
  double get rate;
  @override
  @JsonKey(ignore: true)
  _$$HeroRateModelImplCopyWith<_$HeroRateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
