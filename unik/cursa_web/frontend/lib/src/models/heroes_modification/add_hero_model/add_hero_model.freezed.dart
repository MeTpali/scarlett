// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_hero_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddHeroModel {
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddHeroModelCopyWith<AddHeroModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddHeroModelCopyWith<$Res> {
  factory $AddHeroModelCopyWith(
          AddHeroModel value, $Res Function(AddHeroModel) then) =
      _$AddHeroModelCopyWithImpl<$Res, AddHeroModel>;
  @useResult
  $Res call({String name, String icon});
}

/// @nodoc
class _$AddHeroModelCopyWithImpl<$Res, $Val extends AddHeroModel>
    implements $AddHeroModelCopyWith<$Res> {
  _$AddHeroModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$AddHeroModelImplCopyWith<$Res>
    implements $AddHeroModelCopyWith<$Res> {
  factory _$$AddHeroModelImplCopyWith(
          _$AddHeroModelImpl value, $Res Function(_$AddHeroModelImpl) then) =
      __$$AddHeroModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String icon});
}

/// @nodoc
class __$$AddHeroModelImplCopyWithImpl<$Res>
    extends _$AddHeroModelCopyWithImpl<$Res, _$AddHeroModelImpl>
    implements _$$AddHeroModelImplCopyWith<$Res> {
  __$$AddHeroModelImplCopyWithImpl(
      _$AddHeroModelImpl _value, $Res Function(_$AddHeroModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? icon = null,
  }) {
    return _then(_$AddHeroModelImpl(
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

class _$AddHeroModelImpl implements _AddHeroModel {
  const _$AddHeroModelImpl({this.name = '', this.icon = ''});

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String icon;

  @override
  String toString() {
    return 'AddHeroModel(name: $name, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddHeroModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddHeroModelImplCopyWith<_$AddHeroModelImpl> get copyWith =>
      __$$AddHeroModelImplCopyWithImpl<_$AddHeroModelImpl>(this, _$identity);
}

abstract class _AddHeroModel implements AddHeroModel {
  const factory _AddHeroModel({final String name, final String icon}) =
      _$AddHeroModelImpl;

  @override
  String get name;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$AddHeroModelImplCopyWith<_$AddHeroModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
