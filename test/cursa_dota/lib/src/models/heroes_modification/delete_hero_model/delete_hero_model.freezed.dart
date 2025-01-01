// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_hero_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteHeroModel {
  HeroModel? get hero => throw _privateConstructorUsedError;

  /// Create a copy of DeleteHeroModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteHeroModelCopyWith<DeleteHeroModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteHeroModelCopyWith<$Res> {
  factory $DeleteHeroModelCopyWith(
          DeleteHeroModel value, $Res Function(DeleteHeroModel) then) =
      _$DeleteHeroModelCopyWithImpl<$Res, DeleteHeroModel>;
  @useResult
  $Res call({HeroModel? hero});

  $HeroModelCopyWith<$Res>? get hero;
}

/// @nodoc
class _$DeleteHeroModelCopyWithImpl<$Res, $Val extends DeleteHeroModel>
    implements $DeleteHeroModelCopyWith<$Res> {
  _$DeleteHeroModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteHeroModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hero = freezed,
  }) {
    return _then(_value.copyWith(
      hero: freezed == hero
          ? _value.hero
          : hero // ignore: cast_nullable_to_non_nullable
              as HeroModel?,
    ) as $Val);
  }

  /// Create a copy of DeleteHeroModel
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
abstract class _$$DeleteHeroModelImplCopyWith<$Res>
    implements $DeleteHeroModelCopyWith<$Res> {
  factory _$$DeleteHeroModelImplCopyWith(_$DeleteHeroModelImpl value,
          $Res Function(_$DeleteHeroModelImpl) then) =
      __$$DeleteHeroModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HeroModel? hero});

  @override
  $HeroModelCopyWith<$Res>? get hero;
}

/// @nodoc
class __$$DeleteHeroModelImplCopyWithImpl<$Res>
    extends _$DeleteHeroModelCopyWithImpl<$Res, _$DeleteHeroModelImpl>
    implements _$$DeleteHeroModelImplCopyWith<$Res> {
  __$$DeleteHeroModelImplCopyWithImpl(
      _$DeleteHeroModelImpl _value, $Res Function(_$DeleteHeroModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteHeroModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hero = freezed,
  }) {
    return _then(_$DeleteHeroModelImpl(
      hero: freezed == hero
          ? _value.hero
          : hero // ignore: cast_nullable_to_non_nullable
              as HeroModel?,
    ));
  }
}

/// @nodoc

class _$DeleteHeroModelImpl implements _DeleteHeroModel {
  const _$DeleteHeroModelImpl({this.hero});

  @override
  final HeroModel? hero;

  @override
  String toString() {
    return 'DeleteHeroModel(hero: $hero)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteHeroModelImpl &&
            (identical(other.hero, hero) || other.hero == hero));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hero);

  /// Create a copy of DeleteHeroModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteHeroModelImplCopyWith<_$DeleteHeroModelImpl> get copyWith =>
      __$$DeleteHeroModelImplCopyWithImpl<_$DeleteHeroModelImpl>(
          this, _$identity);
}

abstract class _DeleteHeroModel implements DeleteHeroModel {
  const factory _DeleteHeroModel({final HeroModel? hero}) =
      _$DeleteHeroModelImpl;

  @override
  HeroModel? get hero;

  /// Create a copy of DeleteHeroModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteHeroModelImplCopyWith<_$DeleteHeroModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
