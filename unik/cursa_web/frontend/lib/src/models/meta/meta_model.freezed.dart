// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MetaModel _$MetaModelFromJson(Map<String, dynamic> json) {
  return _MetaModel.fromJson(json);
}

/// @nodoc
mixin _$MetaModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'winrate')
  String get winrate => throw _privateConstructorUsedError;
  @JsonKey(name: 'matches_played')
  int get matchesPlayed => throw _privateConstructorUsedError;
  @JsonKey(name: 'disadvantage')
  String get disadvantage => throw _privateConstructorUsedError;
  @JsonKey(name: 'hero1_id')
  int get hero1Id => throw _privateConstructorUsedError;
  @JsonKey(name: 'hero2_id')
  int get hero2Id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaModelCopyWith<MetaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaModelCopyWith<$Res> {
  factory $MetaModelCopyWith(MetaModel value, $Res Function(MetaModel) then) =
      _$MetaModelCopyWithImpl<$Res, MetaModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'winrate') String winrate,
      @JsonKey(name: 'matches_played') int matchesPlayed,
      @JsonKey(name: 'disadvantage') String disadvantage,
      @JsonKey(name: 'hero1_id') int hero1Id,
      @JsonKey(name: 'hero2_id') int hero2Id});
}

/// @nodoc
class _$MetaModelCopyWithImpl<$Res, $Val extends MetaModel>
    implements $MetaModelCopyWith<$Res> {
  _$MetaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? winrate = null,
    Object? matchesPlayed = null,
    Object? disadvantage = null,
    Object? hero1Id = null,
    Object? hero2Id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$MetaModelImplCopyWith<$Res>
    implements $MetaModelCopyWith<$Res> {
  factory _$$MetaModelImplCopyWith(
          _$MetaModelImpl value, $Res Function(_$MetaModelImpl) then) =
      __$$MetaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'winrate') String winrate,
      @JsonKey(name: 'matches_played') int matchesPlayed,
      @JsonKey(name: 'disadvantage') String disadvantage,
      @JsonKey(name: 'hero1_id') int hero1Id,
      @JsonKey(name: 'hero2_id') int hero2Id});
}

/// @nodoc
class __$$MetaModelImplCopyWithImpl<$Res>
    extends _$MetaModelCopyWithImpl<$Res, _$MetaModelImpl>
    implements _$$MetaModelImplCopyWith<$Res> {
  __$$MetaModelImplCopyWithImpl(
      _$MetaModelImpl _value, $Res Function(_$MetaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? winrate = null,
    Object? matchesPlayed = null,
    Object? disadvantage = null,
    Object? hero1Id = null,
    Object? hero2Id = null,
  }) {
    return _then(_$MetaModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
@JsonSerializable()
class _$MetaModelImpl implements _MetaModel {
  const _$MetaModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'winrate') required this.winrate,
      @JsonKey(name: 'matches_played') required this.matchesPlayed,
      @JsonKey(name: 'disadvantage') required this.disadvantage,
      @JsonKey(name: 'hero1_id') required this.hero1Id,
      @JsonKey(name: 'hero2_id') required this.hero2Id});

  factory _$MetaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'winrate')
  final String winrate;
  @override
  @JsonKey(name: 'matches_played')
  final int matchesPlayed;
  @override
  @JsonKey(name: 'disadvantage')
  final String disadvantage;
  @override
  @JsonKey(name: 'hero1_id')
  final int hero1Id;
  @override
  @JsonKey(name: 'hero2_id')
  final int hero2Id;

  @override
  String toString() {
    return 'MetaModel(id: $id, winrate: $winrate, matchesPlayed: $matchesPlayed, disadvantage: $disadvantage, hero1Id: $hero1Id, hero2Id: $hero2Id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.winrate, winrate) || other.winrate == winrate) &&
            (identical(other.matchesPlayed, matchesPlayed) ||
                other.matchesPlayed == matchesPlayed) &&
            (identical(other.disadvantage, disadvantage) ||
                other.disadvantage == disadvantage) &&
            (identical(other.hero1Id, hero1Id) || other.hero1Id == hero1Id) &&
            (identical(other.hero2Id, hero2Id) || other.hero2Id == hero2Id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, winrate, matchesPlayed, disadvantage, hero1Id, hero2Id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaModelImplCopyWith<_$MetaModelImpl> get copyWith =>
      __$$MetaModelImplCopyWithImpl<_$MetaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaModelImplToJson(
      this,
    );
  }
}

abstract class _MetaModel implements MetaModel {
  const factory _MetaModel(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'winrate') required final String winrate,
      @JsonKey(name: 'matches_played') required final int matchesPlayed,
      @JsonKey(name: 'disadvantage') required final String disadvantage,
      @JsonKey(name: 'hero1_id') required final int hero1Id,
      @JsonKey(name: 'hero2_id') required final int hero2Id}) = _$MetaModelImpl;

  factory _MetaModel.fromJson(Map<String, dynamic> json) =
      _$MetaModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'winrate')
  String get winrate;
  @override
  @JsonKey(name: 'matches_played')
  int get matchesPlayed;
  @override
  @JsonKey(name: 'disadvantage')
  String get disadvantage;
  @override
  @JsonKey(name: 'hero1_id')
  int get hero1Id;
  @override
  @JsonKey(name: 'hero2_id')
  int get hero2Id;
  @override
  @JsonKey(ignore: true)
  _$$MetaModelImplCopyWith<_$MetaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
