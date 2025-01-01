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

  /// Create a copy of MetaListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of MetaListModel
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of MetaListModel
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of MetaListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of MetaListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaListModelImplCopyWith<_$MetaListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MetaListRate {
  MetaModel get meta => throw _privateConstructorUsedError;
  String get hero1 => throw _privateConstructorUsedError;
  String get hero2 => throw _privateConstructorUsedError;

  /// Create a copy of MetaListRate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaListRateCopyWith<MetaListRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaListRateCopyWith<$Res> {
  factory $MetaListRateCopyWith(
          MetaListRate value, $Res Function(MetaListRate) then) =
      _$MetaListRateCopyWithImpl<$Res, MetaListRate>;
  @useResult
  $Res call({MetaModel meta, String hero1, String hero2});

  $MetaModelCopyWith<$Res> get meta;
}

/// @nodoc
class _$MetaListRateCopyWithImpl<$Res, $Val extends MetaListRate>
    implements $MetaListRateCopyWith<$Res> {
  _$MetaListRateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetaListRate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? hero1 = null,
    Object? hero2 = null,
  }) {
    return _then(_value.copyWith(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaModel,
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

  /// Create a copy of MetaListRate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaModelCopyWith<$Res> get meta {
    return $MetaModelCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
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
  $Res call({MetaModel meta, String hero1, String hero2});

  @override
  $MetaModelCopyWith<$Res> get meta;
}

/// @nodoc
class __$$MetaListRateImplCopyWithImpl<$Res>
    extends _$MetaListRateCopyWithImpl<$Res, _$MetaListRateImpl>
    implements _$$MetaListRateImplCopyWith<$Res> {
  __$$MetaListRateImplCopyWithImpl(
      _$MetaListRateImpl _value, $Res Function(_$MetaListRateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetaListRate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? hero1 = null,
    Object? hero2 = null,
  }) {
    return _then(_$MetaListRateImpl(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaModel,
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
      {required this.meta, required this.hero1, required this.hero2});

  @override
  final MetaModel meta;
  @override
  final String hero1;
  @override
  final String hero2;

  @override
  String toString() {
    return 'MetaListRate(meta: $meta, hero1: $hero1, hero2: $hero2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaListRateImpl &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.hero1, hero1) || other.hero1 == hero1) &&
            (identical(other.hero2, hero2) || other.hero2 == hero2));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meta, hero1, hero2);

  /// Create a copy of MetaListRate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaListRateImplCopyWith<_$MetaListRateImpl> get copyWith =>
      __$$MetaListRateImplCopyWithImpl<_$MetaListRateImpl>(this, _$identity);
}

abstract class _MetaListRate implements MetaListRate {
  const factory _MetaListRate(
      {required final MetaModel meta,
      required final String hero1,
      required final String hero2}) = _$MetaListRateImpl;

  @override
  MetaModel get meta;
  @override
  String get hero1;
  @override
  String get hero2;

  /// Create a copy of MetaListRate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaListRateImplCopyWith<_$MetaListRateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
