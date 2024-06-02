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
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddMetaModelCopyWith<AddMetaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMetaModelCopyWith<$Res> {
  factory $AddMetaModelCopyWith(
          AddMetaModel value, $Res Function(AddMetaModel) then) =
      _$AddMetaModelCopyWithImpl<$Res, AddMetaModel>;
  @useResult
  $Res call({String name, String icon});
}

/// @nodoc
class _$AddMetaModelCopyWithImpl<$Res, $Val extends AddMetaModel>
    implements $AddMetaModelCopyWith<$Res> {
  _$AddMetaModelCopyWithImpl(this._value, this._then);

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
abstract class _$$AddMetaModelImplCopyWith<$Res>
    implements $AddMetaModelCopyWith<$Res> {
  factory _$$AddMetaModelImplCopyWith(
          _$AddMetaModelImpl value, $Res Function(_$AddMetaModelImpl) then) =
      __$$AddMetaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String icon});
}

/// @nodoc
class __$$AddMetaModelImplCopyWithImpl<$Res>
    extends _$AddMetaModelCopyWithImpl<$Res, _$AddMetaModelImpl>
    implements _$$AddMetaModelImplCopyWith<$Res> {
  __$$AddMetaModelImplCopyWithImpl(
      _$AddMetaModelImpl _value, $Res Function(_$AddMetaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? icon = null,
  }) {
    return _then(_$AddMetaModelImpl(
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

class _$AddMetaModelImpl implements _AddMetaModel {
  const _$AddMetaModelImpl({this.name = '', this.icon = ''});

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String icon;

  @override
  String toString() {
    return 'AddMetaModel(name: $name, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMetaModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMetaModelImplCopyWith<_$AddMetaModelImpl> get copyWith =>
      __$$AddMetaModelImplCopyWithImpl<_$AddMetaModelImpl>(this, _$identity);
}

abstract class _AddMetaModel implements AddMetaModel {
  const factory _AddMetaModel({final String name, final String icon}) =
      _$AddMetaModelImpl;

  @override
  String get name;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$AddMetaModelImplCopyWith<_$AddMetaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
