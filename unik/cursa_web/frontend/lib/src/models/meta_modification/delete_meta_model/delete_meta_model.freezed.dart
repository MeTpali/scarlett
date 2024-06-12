// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_meta_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteMetaModel {
  int get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteMetaModelCopyWith<DeleteMetaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteMetaModelCopyWith<$Res> {
  factory $DeleteMetaModelCopyWith(
          DeleteMetaModel value, $Res Function(DeleteMetaModel) then) =
      _$DeleteMetaModelCopyWithImpl<$Res, DeleteMetaModel>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$DeleteMetaModelCopyWithImpl<$Res, $Val extends DeleteMetaModel>
    implements $DeleteMetaModelCopyWith<$Res> {
  _$DeleteMetaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteMetaModelImplCopyWith<$Res>
    implements $DeleteMetaModelCopyWith<$Res> {
  factory _$$DeleteMetaModelImplCopyWith(_$DeleteMetaModelImpl value,
          $Res Function(_$DeleteMetaModelImpl) then) =
      __$$DeleteMetaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteMetaModelImplCopyWithImpl<$Res>
    extends _$DeleteMetaModelCopyWithImpl<$Res, _$DeleteMetaModelImpl>
    implements _$$DeleteMetaModelImplCopyWith<$Res> {
  __$$DeleteMetaModelImplCopyWithImpl(
      _$DeleteMetaModelImpl _value, $Res Function(_$DeleteMetaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteMetaModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteMetaModelImpl implements _DeleteMetaModel {
  const _$DeleteMetaModelImpl({this.id = 0});

  @override
  @JsonKey()
  final int id;

  @override
  String toString() {
    return 'DeleteMetaModel(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMetaModelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMetaModelImplCopyWith<_$DeleteMetaModelImpl> get copyWith =>
      __$$DeleteMetaModelImplCopyWithImpl<_$DeleteMetaModelImpl>(
          this, _$identity);
}

abstract class _DeleteMetaModel implements DeleteMetaModel {
  const factory _DeleteMetaModel({final int id}) = _$DeleteMetaModelImpl;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$DeleteMetaModelImplCopyWith<_$DeleteMetaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
