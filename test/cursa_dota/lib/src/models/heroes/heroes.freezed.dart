// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'heroes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Heroes _$HeroesFromJson(Map<String, dynamic> json) {
  return _Heroes.fromJson(json);
}

/// @nodoc
mixin _$Heroes {
  @JsonKey(name: 'heroes')
  List<HeroModel> get heroes => throw _privateConstructorUsedError;

  /// Serializes this Heroes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Heroes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeroesCopyWith<Heroes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeroesCopyWith<$Res> {
  factory $HeroesCopyWith(Heroes value, $Res Function(Heroes) then) =
      _$HeroesCopyWithImpl<$Res, Heroes>;
  @useResult
  $Res call({@JsonKey(name: 'heroes') List<HeroModel> heroes});
}

/// @nodoc
class _$HeroesCopyWithImpl<$Res, $Val extends Heroes>
    implements $HeroesCopyWith<$Res> {
  _$HeroesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Heroes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heroes = null,
  }) {
    return _then(_value.copyWith(
      heroes: null == heroes
          ? _value.heroes
          : heroes // ignore: cast_nullable_to_non_nullable
              as List<HeroModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeroesImplCopyWith<$Res> implements $HeroesCopyWith<$Res> {
  factory _$$HeroesImplCopyWith(
          _$HeroesImpl value, $Res Function(_$HeroesImpl) then) =
      __$$HeroesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'heroes') List<HeroModel> heroes});
}

/// @nodoc
class __$$HeroesImplCopyWithImpl<$Res>
    extends _$HeroesCopyWithImpl<$Res, _$HeroesImpl>
    implements _$$HeroesImplCopyWith<$Res> {
  __$$HeroesImplCopyWithImpl(
      _$HeroesImpl _value, $Res Function(_$HeroesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Heroes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heroes = null,
  }) {
    return _then(_$HeroesImpl(
      heroes: null == heroes
          ? _value._heroes
          : heroes // ignore: cast_nullable_to_non_nullable
              as List<HeroModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeroesImpl implements _Heroes {
  const _$HeroesImpl(
      {@JsonKey(name: 'heroes') required final List<HeroModel> heroes})
      : _heroes = heroes;

  factory _$HeroesImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeroesImplFromJson(json);

  final List<HeroModel> _heroes;
  @override
  @JsonKey(name: 'heroes')
  List<HeroModel> get heroes {
    if (_heroes is EqualUnmodifiableListView) return _heroes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_heroes);
  }

  @override
  String toString() {
    return 'Heroes(heroes: $heroes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeroesImpl &&
            const DeepCollectionEquality().equals(other._heroes, _heroes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_heroes));

  /// Create a copy of Heroes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeroesImplCopyWith<_$HeroesImpl> get copyWith =>
      __$$HeroesImplCopyWithImpl<_$HeroesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeroesImplToJson(
      this,
    );
  }
}

abstract class _Heroes implements Heroes {
  const factory _Heroes(
          {@JsonKey(name: 'heroes') required final List<HeroModel> heroes}) =
      _$HeroesImpl;

  factory _Heroes.fromJson(Map<String, dynamic> json) = _$HeroesImpl.fromJson;

  @override
  @JsonKey(name: 'heroes')
  List<HeroModel> get heroes;

  /// Create a copy of Heroes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeroesImplCopyWith<_$HeroesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
