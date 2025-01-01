// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hero_picker_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HeroPickerModel {
  SortType get sortType => throw _privateConstructorUsedError;
  List<HeroModel> get heroes => throw _privateConstructorUsedError;

  /// Create a copy of HeroPickerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeroPickerModelCopyWith<HeroPickerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeroPickerModelCopyWith<$Res> {
  factory $HeroPickerModelCopyWith(
          HeroPickerModel value, $Res Function(HeroPickerModel) then) =
      _$HeroPickerModelCopyWithImpl<$Res, HeroPickerModel>;
  @useResult
  $Res call({SortType sortType, List<HeroModel> heroes});
}

/// @nodoc
class _$HeroPickerModelCopyWithImpl<$Res, $Val extends HeroPickerModel>
    implements $HeroPickerModelCopyWith<$Res> {
  _$HeroPickerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeroPickerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortType = null,
    Object? heroes = null,
  }) {
    return _then(_value.copyWith(
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortType,
      heroes: null == heroes
          ? _value.heroes
          : heroes // ignore: cast_nullable_to_non_nullable
              as List<HeroModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeroPickerModelImplCopyWith<$Res>
    implements $HeroPickerModelCopyWith<$Res> {
  factory _$$HeroPickerModelImplCopyWith(_$HeroPickerModelImpl value,
          $Res Function(_$HeroPickerModelImpl) then) =
      __$$HeroPickerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SortType sortType, List<HeroModel> heroes});
}

/// @nodoc
class __$$HeroPickerModelImplCopyWithImpl<$Res>
    extends _$HeroPickerModelCopyWithImpl<$Res, _$HeroPickerModelImpl>
    implements _$$HeroPickerModelImplCopyWith<$Res> {
  __$$HeroPickerModelImplCopyWithImpl(
      _$HeroPickerModelImpl _value, $Res Function(_$HeroPickerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeroPickerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortType = null,
    Object? heroes = null,
  }) {
    return _then(_$HeroPickerModelImpl(
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortType,
      heroes: null == heroes
          ? _value._heroes
          : heroes // ignore: cast_nullable_to_non_nullable
              as List<HeroModel>,
    ));
  }
}

/// @nodoc

class _$HeroPickerModelImpl implements _HeroPickerModel {
  const _$HeroPickerModelImpl(
      {required this.sortType, required final List<HeroModel> heroes})
      : _heroes = heroes;

  @override
  final SortType sortType;
  final List<HeroModel> _heroes;
  @override
  List<HeroModel> get heroes {
    if (_heroes is EqualUnmodifiableListView) return _heroes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_heroes);
  }

  @override
  String toString() {
    return 'HeroPickerModel(sortType: $sortType, heroes: $heroes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeroPickerModelImpl &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType) &&
            const DeepCollectionEquality().equals(other._heroes, _heroes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, sortType, const DeepCollectionEquality().hash(_heroes));

  /// Create a copy of HeroPickerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeroPickerModelImplCopyWith<_$HeroPickerModelImpl> get copyWith =>
      __$$HeroPickerModelImplCopyWithImpl<_$HeroPickerModelImpl>(
          this, _$identity);
}

abstract class _HeroPickerModel implements HeroPickerModel {
  const factory _HeroPickerModel(
      {required final SortType sortType,
      required final List<HeroModel> heroes}) = _$HeroPickerModelImpl;

  @override
  SortType get sortType;
  @override
  List<HeroModel> get heroes;

  /// Create a copy of HeroPickerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeroPickerModelImplCopyWith<_$HeroPickerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
