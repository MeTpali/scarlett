// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MetaListModel {
  List<MetaListRate> get list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MetaListModelCopyWith<MetaListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaListModelCopyWith<$Res> {
  factory $MetaListModelCopyWith(
          MetaListModel value, $Res Function(MetaListModel) then) =
      _$MetaListModelCopyWithImpl<$Res, MetaListModel>;
  @useResult
  $Res call({List<MetaListRate> list});
}

/// @nodoc
class _$MetaListModelCopyWithImpl<$Res, $Val extends MetaListModel>
    implements $MetaListModelCopyWith<$Res> {
  _$MetaListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MetaListRate>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaListModelImplCopyWith<$Res>
    implements $MetaListModelCopyWith<$Res> {
  factory _$$MetaListModelImplCopyWith(
          _$MetaListModelImpl value, $Res Function(_$MetaListModelImpl) then) =
      __$$MetaListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MetaListRate> list});
}

/// @nodoc
class __$$MetaListModelImplCopyWithImpl<$Res>
    extends _$MetaListModelCopyWithImpl<$Res, _$MetaListModelImpl>
    implements _$$MetaListModelImplCopyWith<$Res> {
  __$$MetaListModelImplCopyWithImpl(
      _$MetaListModelImpl _value, $Res Function(_$MetaListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$MetaListModelImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MetaListRate>,
    ));
  }
}

/// @nodoc

class _$MetaListModelImpl implements _MetaListModel {
  const _$MetaListModelImpl({required final List<MetaListRate> list})
      : _list = list;

  final List<MetaListRate> _list;
  @override
  List<MetaListRate> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'MetaListModel(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaListModelImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaListModelImplCopyWith<_$MetaListModelImpl> get copyWith =>
      __$$MetaListModelImplCopyWithImpl<_$MetaListModelImpl>(this, _$identity);
}

abstract class _MetaListModel implements MetaListModel {
  const factory _MetaListModel({required final List<MetaListRate> list}) =
      _$MetaListModelImpl;

  @override
  List<MetaListRate> get list;
  @override
  @JsonKey(ignore: true)
  _$$MetaListModelImplCopyWith<_$MetaListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MetaListRate {
  int get id => throw _privateConstructorUsedError;
  String get winrate => throw _privateConstructorUsedError;
  int get matchesPlayed => throw _privateConstructorUsedError;
  String get disadvantage => throw _privateConstructorUsedError;
  String get hero1 => throw _privateConstructorUsedError;
  String get hero2 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MetaListRateCopyWith<MetaListRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaListRateCopyWith<$Res> {
  factory $MetaListRateCopyWith(
          MetaListRate value, $Res Function(MetaListRate) then) =
      _$MetaListRateCopyWithImpl<$Res, MetaListRate>;
  @useResult
  $Res call(
      {int id,
      String winrate,
      int matchesPlayed,
      String disadvantage,
      String hero1,
      String hero2});
}

/// @nodoc
class _$MetaListRateCopyWithImpl<$Res, $Val extends MetaListRate>
    implements $MetaListRateCopyWith<$Res> {
  _$MetaListRateCopyWithImpl(this._value, this._then);

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
    Object? hero1 = null,
    Object? hero2 = null,
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
      hero1: null == hero1
          ? _value.hero1
          : hero1 // ignore: cast_nullable_to_non_nullable
              as String,
      hero2: null == hero2
          ? _value.hero2
          : hero2 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaListRateImplCopyWith<$Res>
    implements $MetaListRateCopyWith<$Res> {
  factory _$$MetaListRateImplCopyWith(
          _$MetaListRateImpl value, $Res Function(_$MetaListRateImpl) then) =
      __$$MetaListRateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String winrate,
      int matchesPlayed,
      String disadvantage,
      String hero1,
      String hero2});
}

/// @nodoc
class __$$MetaListRateImplCopyWithImpl<$Res>
    extends _$MetaListRateCopyWithImpl<$Res, _$MetaListRateImpl>
    implements _$$MetaListRateImplCopyWith<$Res> {
  __$$MetaListRateImplCopyWithImpl(
      _$MetaListRateImpl _value, $Res Function(_$MetaListRateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? winrate = null,
    Object? matchesPlayed = null,
    Object? disadvantage = null,
    Object? hero1 = null,
    Object? hero2 = null,
  }) {
    return _then(_$MetaListRateImpl(
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
      hero1: null == hero1
          ? _value.hero1
          : hero1 // ignore: cast_nullable_to_non_nullable
              as String,
      hero2: null == hero2
          ? _value.hero2
          : hero2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MetaListRateImpl implements _MetaListRate {
  const _$MetaListRateImpl(
      {required this.id,
      required this.winrate,
      required this.matchesPlayed,
      required this.disadvantage,
      required this.hero1,
      required this.hero2});

  @override
  final int id;
  @override
  final String winrate;
  @override
  final int matchesPlayed;
  @override
  final String disadvantage;
  @override
  final String hero1;
  @override
  final String hero2;

  @override
  String toString() {
    return 'MetaListRate(id: $id, winrate: $winrate, matchesPlayed: $matchesPlayed, disadvantage: $disadvantage, hero1: $hero1, hero2: $hero2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaListRateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.winrate, winrate) || other.winrate == winrate) &&
            (identical(other.matchesPlayed, matchesPlayed) ||
                other.matchesPlayed == matchesPlayed) &&
            (identical(other.disadvantage, disadvantage) ||
                other.disadvantage == disadvantage) &&
            (identical(other.hero1, hero1) || other.hero1 == hero1) &&
            (identical(other.hero2, hero2) || other.hero2 == hero2));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, winrate, matchesPlayed, disadvantage, hero1, hero2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaListRateImplCopyWith<_$MetaListRateImpl> get copyWith =>
      __$$MetaListRateImplCopyWithImpl<_$MetaListRateImpl>(this, _$identity);
}

abstract class _MetaListRate implements MetaListRate {
  const factory _MetaListRate(
      {required final int id,
      required final String winrate,
      required final int matchesPlayed,
      required final String disadvantage,
      required final String hero1,
      required final String hero2}) = _$MetaListRateImpl;

  @override
  int get id;
  @override
  String get winrate;
  @override
  int get matchesPlayed;
  @override
  String get disadvantage;
  @override
  String get hero1;
  @override
  String get hero2;
  @override
  @JsonKey(ignore: true)
  _$$MetaListRateImplCopyWith<_$MetaListRateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
