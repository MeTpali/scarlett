// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'messages_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessagesModel _$MessagesModelFromJson(Map<String, dynamic> json) {
  return _MessagesModel.fromJson(json);
}

/// @nodoc
mixin _$MessagesModel {
  @JsonKey(name: 'error')
  List<String>? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'warning')
  List<String>? get warning => throw _privateConstructorUsedError;
  @JsonKey(name: 'info')
  List<String>? get info => throw _privateConstructorUsedError;

  /// Serializes this MessagesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessagesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessagesModelCopyWith<MessagesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesModelCopyWith<$Res> {
  factory $MessagesModelCopyWith(
          MessagesModel value, $Res Function(MessagesModel) then) =
      _$MessagesModelCopyWithImpl<$Res, MessagesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'error') List<String>? error,
      @JsonKey(name: 'warning') List<String>? warning,
      @JsonKey(name: 'info') List<String>? info});
}

/// @nodoc
class _$MessagesModelCopyWithImpl<$Res, $Val extends MessagesModel>
    implements $MessagesModelCopyWith<$Res> {
  _$MessagesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessagesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? warning = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      warning: freezed == warning
          ? _value.warning
          : warning // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessagesModelImplCopyWith<$Res>
    implements $MessagesModelCopyWith<$Res> {
  factory _$$MessagesModelImplCopyWith(
          _$MessagesModelImpl value, $Res Function(_$MessagesModelImpl) then) =
      __$$MessagesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'error') List<String>? error,
      @JsonKey(name: 'warning') List<String>? warning,
      @JsonKey(name: 'info') List<String>? info});
}

/// @nodoc
class __$$MessagesModelImplCopyWithImpl<$Res>
    extends _$MessagesModelCopyWithImpl<$Res, _$MessagesModelImpl>
    implements _$$MessagesModelImplCopyWith<$Res> {
  __$$MessagesModelImplCopyWithImpl(
      _$MessagesModelImpl _value, $Res Function(_$MessagesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessagesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? warning = freezed,
    Object? info = freezed,
  }) {
    return _then(_$MessagesModelImpl(
      error: freezed == error
          ? _value._error
          : error // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      warning: freezed == warning
          ? _value._warning
          : warning // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      info: freezed == info
          ? _value._info
          : info // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessagesModelImpl implements _MessagesModel {
  const _$MessagesModelImpl(
      {@JsonKey(name: 'error') final List<String>? error,
      @JsonKey(name: 'warning') final List<String>? warning,
      @JsonKey(name: 'info') final List<String>? info})
      : _error = error,
        _warning = warning,
        _info = info;

  factory _$MessagesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessagesModelImplFromJson(json);

  final List<String>? _error;
  @override
  @JsonKey(name: 'error')
  List<String>? get error {
    final value = _error;
    if (value == null) return null;
    if (_error is EqualUnmodifiableListView) return _error;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _warning;
  @override
  @JsonKey(name: 'warning')
  List<String>? get warning {
    final value = _warning;
    if (value == null) return null;
    if (_warning is EqualUnmodifiableListView) return _warning;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _info;
  @override
  @JsonKey(name: 'info')
  List<String>? get info {
    final value = _info;
    if (value == null) return null;
    if (_info is EqualUnmodifiableListView) return _info;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MessagesModel(error: $error, warning: $warning, info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagesModelImpl &&
            const DeepCollectionEquality().equals(other._error, _error) &&
            const DeepCollectionEquality().equals(other._warning, _warning) &&
            const DeepCollectionEquality().equals(other._info, _info));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_error),
      const DeepCollectionEquality().hash(_warning),
      const DeepCollectionEquality().hash(_info));

  /// Create a copy of MessagesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagesModelImplCopyWith<_$MessagesModelImpl> get copyWith =>
      __$$MessagesModelImplCopyWithImpl<_$MessagesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessagesModelImplToJson(
      this,
    );
  }
}

abstract class _MessagesModel implements MessagesModel {
  const factory _MessagesModel(
      {@JsonKey(name: 'error') final List<String>? error,
      @JsonKey(name: 'warning') final List<String>? warning,
      @JsonKey(name: 'info') final List<String>? info}) = _$MessagesModelImpl;

  factory _MessagesModel.fromJson(Map<String, dynamic> json) =
      _$MessagesModelImpl.fromJson;

  @override
  @JsonKey(name: 'error')
  List<String>? get error;
  @override
  @JsonKey(name: 'warning')
  List<String>? get warning;
  @override
  @JsonKey(name: 'info')
  List<String>? get info;

  /// Create a copy of MessagesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessagesModelImplCopyWith<_$MessagesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
