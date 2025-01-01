// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_meta_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddMetaModel {
  String get winrate => throw _privateConstructorUsedError;
  int get matchesPlayed => throw _privateConstructorUsedError;
  String get disadvantage => throw _privateConstructorUsedError;
  int get hero1Id => throw _privateConstructorUsedError;
  int get hero2Id => throw _privateConstructorUsedError;

  /// Create a copy of AddMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddMetaModelCopyWith<AddMetaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMetaModelCopyWith<$Res> {
  factory $AddMetaModelCopyWith(
          AddMetaModel value, $Res Function(AddMetaModel) then) =
      _$AddMetaModelCopyWithImpl<$Res, AddMetaModel>;
  @useResult
  $Res call(
      {String winrate,
      int matchesPlayed,
      String disadvantage,
      int hero1Id,
      int hero2Id});
}

/// @nodoc
class _$AddMetaModelCopyWithImpl<$Res, $Val extends AddMetaModel>
    implements $AddMetaModelCopyWith<$Res> {
  _$AddMetaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? winrate = null,
    Object? matchesPlayed = null,
    Object? disadvantage = null,
    Object? hero1Id = null,
    Object? hero2Id = null,
  }) {
    return _then(_value.copyWith(
      winrate: null == winrate
          ? _value.winrate
          : winrate // ignore: cast_nullable_to_non_nullable
              as String,
      matchesPlayed: null == matchesPlayed
          ? _value.matchesPlayed
          : matchesPlayed // ignore: cast_nullable_to_non_nullable
              as int,
      disadvantage: null == disadvantage
          ? _value.disadvantage
          : disadvantage // ignore: cast_nullable_to_non_nullable
              as String,
      hero1Id: null == hero1Id
          ? _value.hero1Id
          : hero1Id // ignore: cast_nullable_to_non_nullable
              as int,
      hero2Id: null == hero2Id
          ? _value.hero2Id
          : hero2Id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddMetaModelImplCopyWith<$Res>
    implements $AddMetaModelCopyWith<$Res> {
  factory _$$AddMetaModelImplCopyWith(
          _$AddMetaModelImpl value, $Res Function(_$AddMetaModelImpl) then) =
      __$$AddMetaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String winrate,
      int matchesPlayed,
      String disadvantage,
      int hero1Id,
      int hero2Id});
}

/// @nodoc
class __$$AddMetaModelImplCopyWithImpl<$Res>
    extends _$AddMetaModelCopyWithImpl<$Res, _$AddMetaModelImpl>
    implements _$$AddMetaModelImplCopyWith<$Res> {
  __$$AddMetaModelImplCopyWithImpl(
      _$AddMetaModelImpl _value, $Res Function(_$AddMetaModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? winrate = null,
    Object? matchesPlayed = null,
    Object? disadvantage = null,
    Object? hero1Id = null,
    Object? hero2Id = null,
  }) {
    return _then(_$AddMetaModelImpl(
      winrate: null == winrate
          ? _value.winrate
          : winrate // ignore: cast_nullable_to_non_nullable
              as String,
      matchesPlayed: null == matchesPlayed
          ? _value.matchesPlayed
          : matchesPlayed // ignore: cast_nullable_to_non_nullable
              as int,
      disadvantage: null == disadvantage
          ? _value.disadvantage
          : disadvantage // ignore: cast_nullable_to_non_nullable
              as String,
      hero1Id: null == hero1Id
          ? _value.hero1Id
          : hero1Id // ignore: cast_nullable_to_non_nullable
              as int,
      hero2Id: null == hero2Id
          ? _value.hero2Id
          : hero2Id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddMetaModelImpl implements _AddMetaModel {
  const _$AddMetaModelImpl(
      {this.winrate = '',
      this.matchesPlayed = 0,
      this.disadvantage = '',
      this.hero1Id = 0,
      this.hero2Id = 0});

  @override
  @JsonKey()
  final String winrate;
  @override
  @JsonKey()
  final int matchesPlayed;
  @override
  @JsonKey()
  final String disadvantage;
  @override
  @JsonKey()
  final int hero1Id;
  @override
  @JsonKey()
  final int hero2Id;

  @override
  String toString() {
    return 'AddMetaModel(winrate: $winrate, matchesPlayed: $matchesPlayed, disadvantage: $disadvantage, hero1Id: $hero1Id, hero2Id: $hero2Id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMetaModelImpl &&
            (identical(other.winrate, winrate) || other.winrate == winrate) &&
            (identical(other.matchesPlayed, matchesPlayed) ||
                other.matchesPlayed == matchesPlayed) &&
            (identical(other.disadvantage, disadvantage) ||
                other.disadvantage == disadvantage) &&
            (identical(other.hero1Id, hero1Id) || other.hero1Id == hero1Id) &&
            (identical(other.hero2Id, hero2Id) || other.hero2Id == hero2Id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, winrate, matchesPlayed, disadvantage, hero1Id, hero2Id);

  /// Create a copy of AddMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMetaModelImplCopyWith<_$AddMetaModelImpl> get copyWith =>
      __$$AddMetaModelImplCopyWithImpl<_$AddMetaModelImpl>(this, _$identity);
}

abstract class _AddMetaModel implements AddMetaModel {
  const factory _AddMetaModel(
      {final String winrate,
      final int matchesPlayed,
      final String disadvantage,
      final int hero1Id,
      final int hero2Id}) = _$AddMetaModelImpl;

  @override
  String get winrate;
  @override
  int get matchesPlayed;
  @override
  String get disadvantage;
  @override
  int get hero1Id;
  @override
  int get hero2Id;

  /// Create a copy of AddMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddMetaModelImplCopyWith<_$AddMetaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
