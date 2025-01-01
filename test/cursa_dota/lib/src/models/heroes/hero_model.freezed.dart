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

HeroModel _$HeroModelFromJson(Map<String, dynamic> json) {
  return _HeroModel.fromJson(json);
}

/// @nodoc
mixin _$HeroModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon')
  String get icon => throw _privateConstructorUsedError;

  /// Serializes this HeroModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeroModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeroModelCopyWith<HeroModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeroModelCopyWith<$Res> {
  factory $HeroModelCopyWith(HeroModel value, $Res Function(HeroModel) then) =
      _$HeroModelCopyWithImpl<$Res, HeroModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'icon') String icon});
}

/// @nodoc
class _$HeroModelCopyWithImpl<$Res, $Val extends HeroModel>
    implements $HeroModelCopyWith<$Res> {
  _$HeroModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeroModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeroModelImplCopyWith<$Res>
    implements $HeroModelCopyWith<$Res> {
  factory _$$HeroModelImplCopyWith(
          _$HeroModelImpl value, $Res Function(_$HeroModelImpl) then) =
      __$$HeroModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'icon') String icon});
}

/// @nodoc
class __$$HeroModelImplCopyWithImpl<$Res>
    extends _$HeroModelCopyWithImpl<$Res, _$HeroModelImpl>
    implements _$$HeroModelImplCopyWith<$Res> {
  __$$HeroModelImplCopyWithImpl(
      _$HeroModelImpl _value, $Res Function(_$HeroModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeroModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
  }) {
    return _then(_$HeroModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeroModelImpl implements _HeroModel {
  const _$HeroModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'icon') required this.icon});

  factory _$HeroModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeroModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'icon')
  final String icon;

  @override
  String toString() {
    return 'HeroModel(id: $id, name: $name, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeroModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, icon);

  /// Create a copy of HeroModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeroModelImplCopyWith<_$HeroModelImpl> get copyWith =>
      __$$HeroModelImplCopyWithImpl<_$HeroModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeroModelImplToJson(
      this,
    );
  }
}

abstract class _HeroModel implements HeroModel {
  const factory _HeroModel(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'icon') required final String icon}) = _$HeroModelImpl;

  factory _HeroModel.fromJson(Map<String, dynamic> json) =
      _$HeroModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'icon')
  String get icon;

  /// Create a copy of HeroModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeroModelImplCopyWith<_$HeroModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
