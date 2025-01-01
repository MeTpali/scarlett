// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_hero_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateHeroModel {
  int get id => throw _privateConstructorUsedError;
  HeroModel? get hero => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  /// Create a copy of UpdateHeroModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateHeroModelCopyWith<UpdateHeroModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateHeroModelCopyWith<$Res> {
  factory $UpdateHeroModelCopyWith(
          UpdateHeroModel value, $Res Function(UpdateHeroModel) then) =
      _$UpdateHeroModelCopyWithImpl<$Res, UpdateHeroModel>;
  @useResult
  $Res call({int id, HeroModel? hero, String name, String icon});

  $HeroModelCopyWith<$Res>? get hero;
}

/// @nodoc
class _$UpdateHeroModelCopyWithImpl<$Res, $Val extends UpdateHeroModel>
    implements $UpdateHeroModelCopyWith<$Res> {
  _$UpdateHeroModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateHeroModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hero = freezed,
    Object? name = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hero: freezed == hero
          ? _value.hero
          : hero // ignore: cast_nullable_to_non_nullable
              as HeroModel?,
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

  /// Create a copy of UpdateHeroModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeroModelCopyWith<$Res>? get hero {
    if (_value.hero == null) {
      return null;
    }

    return $HeroModelCopyWith<$Res>(_value.hero!, (value) {
      return _then(_value.copyWith(hero: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateHeroModelImplCopyWith<$Res>
    implements $UpdateHeroModelCopyWith<$Res> {
  factory _$$UpdateHeroModelImplCopyWith(_$UpdateHeroModelImpl value,
          $Res Function(_$UpdateHeroModelImpl) then) =
      __$$UpdateHeroModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, HeroModel? hero, String name, String icon});

  @override
  $HeroModelCopyWith<$Res>? get hero;
}

/// @nodoc
class __$$UpdateHeroModelImplCopyWithImpl<$Res>
    extends _$UpdateHeroModelCopyWithImpl<$Res, _$UpdateHeroModelImpl>
    implements _$$UpdateHeroModelImplCopyWith<$Res> {
  __$$UpdateHeroModelImplCopyWithImpl(
      _$UpdateHeroModelImpl _value, $Res Function(_$UpdateHeroModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateHeroModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hero = freezed,
    Object? name = null,
    Object? icon = null,
  }) {
    return _then(_$UpdateHeroModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hero: freezed == hero
          ? _value.hero
          : hero // ignore: cast_nullable_to_non_nullable
              as HeroModel?,
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

class _$UpdateHeroModelImpl implements _UpdateHeroModel {
  const _$UpdateHeroModelImpl(
      {this.id = 0, this.hero, this.name = '', this.icon = ''});

  @override
  @JsonKey()
  final int id;
  @override
  final HeroModel? hero;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String icon;

  @override
  String toString() {
    return 'UpdateHeroModel(id: $id, hero: $hero, name: $name, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateHeroModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hero, hero) || other.hero == hero) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, hero, name, icon);

  /// Create a copy of UpdateHeroModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateHeroModelImplCopyWith<_$UpdateHeroModelImpl> get copyWith =>
      __$$UpdateHeroModelImplCopyWithImpl<_$UpdateHeroModelImpl>(
          this, _$identity);
}

abstract class _UpdateHeroModel implements UpdateHeroModel {
  const factory _UpdateHeroModel(
      {final int id,
      final HeroModel? hero,
      final String name,
      final String icon}) = _$UpdateHeroModelImpl;

  @override
  int get id;
  @override
  HeroModel? get hero;
  @override
  String get name;
  @override
  String get icon;

  /// Create a copy of UpdateHeroModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateHeroModelImplCopyWith<_$UpdateHeroModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
