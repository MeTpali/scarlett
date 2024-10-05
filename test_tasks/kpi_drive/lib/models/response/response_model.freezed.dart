// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseModel _$ResponseModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'success':
      return _ResponseModelSuccess.fromJson(json);
    case 'error':
      return _ResponseModelError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ResponseModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ResponseModel {
  @JsonKey(name: 'MESSAGES')
  MessagesModel get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'STATUS')
  String get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'MESSAGES') MessagesModel message,
            @JsonKey(name: 'DATA') dynamic data,
            @JsonKey(name: 'STATUS') String status)
        success,
    required TResult Function(@JsonKey(name: 'MESSAGES') MessagesModel message,
            @JsonKey(name: 'STATUS') String status)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'MESSAGES') MessagesModel message,
            @JsonKey(name: 'DATA') dynamic data,
            @JsonKey(name: 'STATUS') String status)?
        success,
    TResult? Function(@JsonKey(name: 'MESSAGES') MessagesModel message,
            @JsonKey(name: 'STATUS') String status)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'MESSAGES') MessagesModel message,
            @JsonKey(name: 'DATA') dynamic data,
            @JsonKey(name: 'STATUS') String status)?
        success,
    TResult Function(@JsonKey(name: 'MESSAGES') MessagesModel message,
            @JsonKey(name: 'STATUS') String status)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResponseModelSuccess value) success,
    required TResult Function(_ResponseModelError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResponseModelSuccess value)? success,
    TResult? Function(_ResponseModelError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResponseModelSuccess value)? success,
    TResult Function(_ResponseModelError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseModelCopyWith<ResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseModelCopyWith<$Res> {
  factory $ResponseModelCopyWith(
          ResponseModel value, $Res Function(ResponseModel) then) =
      _$ResponseModelCopyWithImpl<$Res, ResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'MESSAGES') MessagesModel message,
      @JsonKey(name: 'STATUS') String status});

  $MessagesModelCopyWith<$Res> get message;
}

/// @nodoc
class _$ResponseModelCopyWithImpl<$Res, $Val extends ResponseModel>
    implements $ResponseModelCopyWith<$Res> {
  _$ResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessagesModel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessagesModelCopyWith<$Res> get message {
    return $MessagesModelCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseModelSuccessImplCopyWith<$Res>
    implements $ResponseModelCopyWith<$Res> {
  factory _$$ResponseModelSuccessImplCopyWith(_$ResponseModelSuccessImpl value,
          $Res Function(_$ResponseModelSuccessImpl) then) =
      __$$ResponseModelSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'MESSAGES') MessagesModel message,
      @JsonKey(name: 'DATA') dynamic data,
      @JsonKey(name: 'STATUS') String status});

  @override
  $MessagesModelCopyWith<$Res> get message;
}

/// @nodoc
class __$$ResponseModelSuccessImplCopyWithImpl<$Res>
    extends _$ResponseModelCopyWithImpl<$Res, _$ResponseModelSuccessImpl>
    implements _$$ResponseModelSuccessImplCopyWith<$Res> {
  __$$ResponseModelSuccessImplCopyWithImpl(_$ResponseModelSuccessImpl _value,
      $Res Function(_$ResponseModelSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = freezed,
    Object? status = null,
  }) {
    return _then(_$ResponseModelSuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessagesModel,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseModelSuccessImpl implements _ResponseModelSuccess {
  const _$ResponseModelSuccessImpl(
      {@JsonKey(name: 'MESSAGES') required this.message,
      @JsonKey(name: 'DATA') required this.data,
      @JsonKey(name: 'STATUS') required this.status,
      final String? $type})
      : $type = $type ?? 'success';

  factory _$ResponseModelSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseModelSuccessImplFromJson(json);

  @override
  @JsonKey(name: 'MESSAGES')
  final MessagesModel message;
  @override
  @JsonKey(name: 'DATA')
  final dynamic data;
  @override
  @JsonKey(name: 'STATUS')
  final String status;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ResponseModel.success(message: $message, data: $data, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseModelSuccessImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(data), status);

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseModelSuccessImplCopyWith<_$ResponseModelSuccessImpl>
      get copyWith =>
          __$$ResponseModelSuccessImplCopyWithImpl<_$ResponseModelSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'MESSAGES') MessagesModel message,
            @JsonKey(name: 'DATA') dynamic data,
            @JsonKey(name: 'STATUS') String status)
        success,
    required TResult Function(@JsonKey(name: 'MESSAGES') MessagesModel message,
            @JsonKey(name: 'STATUS') String status)
        error,
  }) {
    return success(message, data, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'MESSAGES') MessagesModel message,
            @JsonKey(name: 'DATA') dynamic data,
            @JsonKey(name: 'STATUS') String status)?
        success,
    TResult? Function(@JsonKey(name: 'MESSAGES') MessagesModel message,
            @JsonKey(name: 'STATUS') String status)?
        error,
  }) {
    return success?.call(message, data, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'MESSAGES') MessagesModel message,
            @JsonKey(name: 'DATA') dynamic data,
            @JsonKey(name: 'STATUS') String status)?
        success,
    TResult Function(@JsonKey(name: 'MESSAGES') MessagesModel message,
            @JsonKey(name: 'STATUS') String status)?
        error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message, data, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResponseModelSuccess value) success,
    required TResult Function(_ResponseModelError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResponseModelSuccess value)? success,
    TResult? Function(_ResponseModelError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResponseModelSuccess value)? success,
    TResult Function(_ResponseModelError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseModelSuccessImplToJson(
      this,
    );
  }
}

abstract class _ResponseModelSuccess implements ResponseModel {
  const factory _ResponseModelSuccess(
          {@JsonKey(name: 'MESSAGES') required final MessagesModel message,
          @JsonKey(name: 'DATA') required final dynamic data,
          @JsonKey(name: 'STATUS') required final String status}) =
      _$ResponseModelSuccessImpl;

  factory _ResponseModelSuccess.fromJson(Map<String, dynamic> json) =
      _$ResponseModelSuccessImpl.fromJson;

  @override
  @JsonKey(name: 'MESSAGES')
  MessagesModel get message;
  @JsonKey(name: 'DATA')
  dynamic get data;
  @override
  @JsonKey(name: 'STATUS')
  String get status;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseModelSuccessImplCopyWith<_$ResponseModelSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResponseModelErrorImplCopyWith<$Res>
    implements $ResponseModelCopyWith<$Res> {
  factory _$$ResponseModelErrorImplCopyWith(_$ResponseModelErrorImpl value,
          $Res Function(_$ResponseModelErrorImpl) then) =
      __$$ResponseModelErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'MESSAGES') MessagesModel message,
      @JsonKey(name: 'STATUS') String status});

  @override
  $MessagesModelCopyWith<$Res> get message;
}

/// @nodoc
class __$$ResponseModelErrorImplCopyWithImpl<$Res>
    extends _$ResponseModelCopyWithImpl<$Res, _$ResponseModelErrorImpl>
    implements _$$ResponseModelErrorImplCopyWith<$Res> {
  __$$ResponseModelErrorImplCopyWithImpl(_$ResponseModelErrorImpl _value,
      $Res Function(_$ResponseModelErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_$ResponseModelErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessagesModel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseModelErrorImpl implements _ResponseModelError {
  const _$ResponseModelErrorImpl(
      {@JsonKey(name: 'MESSAGES') required this.message,
      @JsonKey(name: 'STATUS') required this.status,
      final String? $type})
      : $type = $type ?? 'error';

  factory _$ResponseModelErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseModelErrorImplFromJson(json);

  @override
  @JsonKey(name: 'MESSAGES')
  final MessagesModel message;
  @override
  @JsonKey(name: 'STATUS')
  final String status;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ResponseModel.error(message: $message, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseModelErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, status);

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseModelErrorImplCopyWith<_$ResponseModelErrorImpl> get copyWith =>
      __$$ResponseModelErrorImplCopyWithImpl<_$ResponseModelErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'MESSAGES') MessagesModel message,
            @JsonKey(name: 'DATA') dynamic data,
            @JsonKey(name: 'STATUS') String status)
        success,
    required TResult Function(@JsonKey(name: 'MESSAGES') MessagesModel message,
            @JsonKey(name: 'STATUS') String status)
        error,
  }) {
    return error(message, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'MESSAGES') MessagesModel message,
            @JsonKey(name: 'DATA') dynamic data,
            @JsonKey(name: 'STATUS') String status)?
        success,
    TResult? Function(@JsonKey(name: 'MESSAGES') MessagesModel message,
            @JsonKey(name: 'STATUS') String status)?
        error,
  }) {
    return error?.call(message, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'MESSAGES') MessagesModel message,
            @JsonKey(name: 'DATA') dynamic data,
            @JsonKey(name: 'STATUS') String status)?
        success,
    TResult Function(@JsonKey(name: 'MESSAGES') MessagesModel message,
            @JsonKey(name: 'STATUS') String status)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResponseModelSuccess value) success,
    required TResult Function(_ResponseModelError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResponseModelSuccess value)? success,
    TResult? Function(_ResponseModelError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResponseModelSuccess value)? success,
    TResult Function(_ResponseModelError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseModelErrorImplToJson(
      this,
    );
  }
}

abstract class _ResponseModelError implements ResponseModel {
  const factory _ResponseModelError(
          {@JsonKey(name: 'MESSAGES') required final MessagesModel message,
          @JsonKey(name: 'STATUS') required final String status}) =
      _$ResponseModelErrorImpl;

  factory _ResponseModelError.fromJson(Map<String, dynamic> json) =
      _$ResponseModelErrorImpl.fromJson;

  @override
  @JsonKey(name: 'MESSAGES')
  MessagesModel get message;
  @override
  @JsonKey(name: 'STATUS')
  String get status;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseModelErrorImplCopyWith<_$ResponseModelErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
