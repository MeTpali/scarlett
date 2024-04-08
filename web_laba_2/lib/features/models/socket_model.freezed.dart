// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SocketModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) data,
    required TResult Function(String error) error,
    required TResult Function(String message) done,
    required TResult Function() connected,
    required TResult Function() loading,
    required TResult Function() idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? data,
    TResult? Function(String error)? error,
    TResult? Function(String message)? done,
    TResult? Function()? connected,
    TResult? Function()? loading,
    TResult? Function()? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? data,
    TResult Function(String error)? error,
    TResult Function(String message)? done,
    TResult Function()? connected,
    TResult Function()? loading,
    TResult Function()? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataSocketModel value) data,
    required TResult Function(_ErrorSocketModel value) error,
    required TResult Function(_DoneSocketModel value) done,
    required TResult Function(_ConnectedSocketModel value) connected,
    required TResult Function(_LoadingSocketModel value) loading,
    required TResult Function(_IDLESocketModel value) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataSocketModel value)? data,
    TResult? Function(_ErrorSocketModel value)? error,
    TResult? Function(_DoneSocketModel value)? done,
    TResult? Function(_ConnectedSocketModel value)? connected,
    TResult? Function(_LoadingSocketModel value)? loading,
    TResult? Function(_IDLESocketModel value)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataSocketModel value)? data,
    TResult Function(_ErrorSocketModel value)? error,
    TResult Function(_DoneSocketModel value)? done,
    TResult Function(_ConnectedSocketModel value)? connected,
    TResult Function(_LoadingSocketModel value)? loading,
    TResult Function(_IDLESocketModel value)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketModelCopyWith<$Res> {
  factory $SocketModelCopyWith(
          SocketModel value, $Res Function(SocketModel) then) =
      _$SocketModelCopyWithImpl<$Res, SocketModel>;
}

/// @nodoc
class _$SocketModelCopyWithImpl<$Res, $Val extends SocketModel>
    implements $SocketModelCopyWith<$Res> {
  _$SocketModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DataSocketModelImplCopyWith<$Res> {
  factory _$$DataSocketModelImplCopyWith(_$DataSocketModelImpl value,
          $Res Function(_$DataSocketModelImpl) then) =
      __$$DataSocketModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$DataSocketModelImplCopyWithImpl<$Res>
    extends _$SocketModelCopyWithImpl<$Res, _$DataSocketModelImpl>
    implements _$$DataSocketModelImplCopyWith<$Res> {
  __$$DataSocketModelImplCopyWithImpl(
      _$DataSocketModelImpl _value, $Res Function(_$DataSocketModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DataSocketModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DataSocketModelImpl implements _DataSocketModel {
  const _$DataSocketModelImpl({required this.data});

  @override
  final String data;

  @override
  String toString() {
    return 'SocketModel.data(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataSocketModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataSocketModelImplCopyWith<_$DataSocketModelImpl> get copyWith =>
      __$$DataSocketModelImplCopyWithImpl<_$DataSocketModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) data,
    required TResult Function(String error) error,
    required TResult Function(String message) done,
    required TResult Function() connected,
    required TResult Function() loading,
    required TResult Function() idle,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? data,
    TResult? Function(String error)? error,
    TResult? Function(String message)? done,
    TResult? Function()? connected,
    TResult? Function()? loading,
    TResult? Function()? idle,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? data,
    TResult Function(String error)? error,
    TResult Function(String message)? done,
    TResult Function()? connected,
    TResult Function()? loading,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataSocketModel value) data,
    required TResult Function(_ErrorSocketModel value) error,
    required TResult Function(_DoneSocketModel value) done,
    required TResult Function(_ConnectedSocketModel value) connected,
    required TResult Function(_LoadingSocketModel value) loading,
    required TResult Function(_IDLESocketModel value) idle,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataSocketModel value)? data,
    TResult? Function(_ErrorSocketModel value)? error,
    TResult? Function(_DoneSocketModel value)? done,
    TResult? Function(_ConnectedSocketModel value)? connected,
    TResult? Function(_LoadingSocketModel value)? loading,
    TResult? Function(_IDLESocketModel value)? idle,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataSocketModel value)? data,
    TResult Function(_ErrorSocketModel value)? error,
    TResult Function(_DoneSocketModel value)? done,
    TResult Function(_ConnectedSocketModel value)? connected,
    TResult Function(_LoadingSocketModel value)? loading,
    TResult Function(_IDLESocketModel value)? idle,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataSocketModel implements SocketModel {
  const factory _DataSocketModel({required final String data}) =
      _$DataSocketModelImpl;

  String get data;
  @JsonKey(ignore: true)
  _$$DataSocketModelImplCopyWith<_$DataSocketModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorSocketModelImplCopyWith<$Res> {
  factory _$$ErrorSocketModelImplCopyWith(_$ErrorSocketModelImpl value,
          $Res Function(_$ErrorSocketModelImpl) then) =
      __$$ErrorSocketModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorSocketModelImplCopyWithImpl<$Res>
    extends _$SocketModelCopyWithImpl<$Res, _$ErrorSocketModelImpl>
    implements _$$ErrorSocketModelImplCopyWith<$Res> {
  __$$ErrorSocketModelImplCopyWithImpl(_$ErrorSocketModelImpl _value,
      $Res Function(_$ErrorSocketModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorSocketModelImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorSocketModelImpl implements _ErrorSocketModel {
  const _$ErrorSocketModelImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'SocketModel.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorSocketModelImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorSocketModelImplCopyWith<_$ErrorSocketModelImpl> get copyWith =>
      __$$ErrorSocketModelImplCopyWithImpl<_$ErrorSocketModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) data,
    required TResult Function(String error) error,
    required TResult Function(String message) done,
    required TResult Function() connected,
    required TResult Function() loading,
    required TResult Function() idle,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? data,
    TResult? Function(String error)? error,
    TResult? Function(String message)? done,
    TResult? Function()? connected,
    TResult? Function()? loading,
    TResult? Function()? idle,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? data,
    TResult Function(String error)? error,
    TResult Function(String message)? done,
    TResult Function()? connected,
    TResult Function()? loading,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataSocketModel value) data,
    required TResult Function(_ErrorSocketModel value) error,
    required TResult Function(_DoneSocketModel value) done,
    required TResult Function(_ConnectedSocketModel value) connected,
    required TResult Function(_LoadingSocketModel value) loading,
    required TResult Function(_IDLESocketModel value) idle,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataSocketModel value)? data,
    TResult? Function(_ErrorSocketModel value)? error,
    TResult? Function(_DoneSocketModel value)? done,
    TResult? Function(_ConnectedSocketModel value)? connected,
    TResult? Function(_LoadingSocketModel value)? loading,
    TResult? Function(_IDLESocketModel value)? idle,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataSocketModel value)? data,
    TResult Function(_ErrorSocketModel value)? error,
    TResult Function(_DoneSocketModel value)? done,
    TResult Function(_ConnectedSocketModel value)? connected,
    TResult Function(_LoadingSocketModel value)? loading,
    TResult Function(_IDLESocketModel value)? idle,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorSocketModel implements SocketModel {
  const factory _ErrorSocketModel({required final String error}) =
      _$ErrorSocketModelImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorSocketModelImplCopyWith<_$ErrorSocketModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoneSocketModelImplCopyWith<$Res> {
  factory _$$DoneSocketModelImplCopyWith(_$DoneSocketModelImpl value,
          $Res Function(_$DoneSocketModelImpl) then) =
      __$$DoneSocketModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DoneSocketModelImplCopyWithImpl<$Res>
    extends _$SocketModelCopyWithImpl<$Res, _$DoneSocketModelImpl>
    implements _$$DoneSocketModelImplCopyWith<$Res> {
  __$$DoneSocketModelImplCopyWithImpl(
      _$DoneSocketModelImpl _value, $Res Function(_$DoneSocketModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DoneSocketModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DoneSocketModelImpl implements _DoneSocketModel {
  const _$DoneSocketModelImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'SocketModel.done(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoneSocketModelImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoneSocketModelImplCopyWith<_$DoneSocketModelImpl> get copyWith =>
      __$$DoneSocketModelImplCopyWithImpl<_$DoneSocketModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) data,
    required TResult Function(String error) error,
    required TResult Function(String message) done,
    required TResult Function() connected,
    required TResult Function() loading,
    required TResult Function() idle,
  }) {
    return done(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? data,
    TResult? Function(String error)? error,
    TResult? Function(String message)? done,
    TResult? Function()? connected,
    TResult? Function()? loading,
    TResult? Function()? idle,
  }) {
    return done?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? data,
    TResult Function(String error)? error,
    TResult Function(String message)? done,
    TResult Function()? connected,
    TResult Function()? loading,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataSocketModel value) data,
    required TResult Function(_ErrorSocketModel value) error,
    required TResult Function(_DoneSocketModel value) done,
    required TResult Function(_ConnectedSocketModel value) connected,
    required TResult Function(_LoadingSocketModel value) loading,
    required TResult Function(_IDLESocketModel value) idle,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataSocketModel value)? data,
    TResult? Function(_ErrorSocketModel value)? error,
    TResult? Function(_DoneSocketModel value)? done,
    TResult? Function(_ConnectedSocketModel value)? connected,
    TResult? Function(_LoadingSocketModel value)? loading,
    TResult? Function(_IDLESocketModel value)? idle,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataSocketModel value)? data,
    TResult Function(_ErrorSocketModel value)? error,
    TResult Function(_DoneSocketModel value)? done,
    TResult Function(_ConnectedSocketModel value)? connected,
    TResult Function(_LoadingSocketModel value)? loading,
    TResult Function(_IDLESocketModel value)? idle,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _DoneSocketModel implements SocketModel {
  const factory _DoneSocketModel({required final String message}) =
      _$DoneSocketModelImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$DoneSocketModelImplCopyWith<_$DoneSocketModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectedSocketModelImplCopyWith<$Res> {
  factory _$$ConnectedSocketModelImplCopyWith(_$ConnectedSocketModelImpl value,
          $Res Function(_$ConnectedSocketModelImpl) then) =
      __$$ConnectedSocketModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectedSocketModelImplCopyWithImpl<$Res>
    extends _$SocketModelCopyWithImpl<$Res, _$ConnectedSocketModelImpl>
    implements _$$ConnectedSocketModelImplCopyWith<$Res> {
  __$$ConnectedSocketModelImplCopyWithImpl(_$ConnectedSocketModelImpl _value,
      $Res Function(_$ConnectedSocketModelImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectedSocketModelImpl implements _ConnectedSocketModel {
  const _$ConnectedSocketModelImpl();

  @override
  String toString() {
    return 'SocketModel.connected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectedSocketModelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) data,
    required TResult Function(String error) error,
    required TResult Function(String message) done,
    required TResult Function() connected,
    required TResult Function() loading,
    required TResult Function() idle,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? data,
    TResult? Function(String error)? error,
    TResult? Function(String message)? done,
    TResult? Function()? connected,
    TResult? Function()? loading,
    TResult? Function()? idle,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? data,
    TResult Function(String error)? error,
    TResult Function(String message)? done,
    TResult Function()? connected,
    TResult Function()? loading,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataSocketModel value) data,
    required TResult Function(_ErrorSocketModel value) error,
    required TResult Function(_DoneSocketModel value) done,
    required TResult Function(_ConnectedSocketModel value) connected,
    required TResult Function(_LoadingSocketModel value) loading,
    required TResult Function(_IDLESocketModel value) idle,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataSocketModel value)? data,
    TResult? Function(_ErrorSocketModel value)? error,
    TResult? Function(_DoneSocketModel value)? done,
    TResult? Function(_ConnectedSocketModel value)? connected,
    TResult? Function(_LoadingSocketModel value)? loading,
    TResult? Function(_IDLESocketModel value)? idle,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataSocketModel value)? data,
    TResult Function(_ErrorSocketModel value)? error,
    TResult Function(_DoneSocketModel value)? done,
    TResult Function(_ConnectedSocketModel value)? connected,
    TResult Function(_LoadingSocketModel value)? loading,
    TResult Function(_IDLESocketModel value)? idle,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class _ConnectedSocketModel implements SocketModel {
  const factory _ConnectedSocketModel() = _$ConnectedSocketModelImpl;
}

/// @nodoc
abstract class _$$LoadingSocketModelImplCopyWith<$Res> {
  factory _$$LoadingSocketModelImplCopyWith(_$LoadingSocketModelImpl value,
          $Res Function(_$LoadingSocketModelImpl) then) =
      __$$LoadingSocketModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingSocketModelImplCopyWithImpl<$Res>
    extends _$SocketModelCopyWithImpl<$Res, _$LoadingSocketModelImpl>
    implements _$$LoadingSocketModelImplCopyWith<$Res> {
  __$$LoadingSocketModelImplCopyWithImpl(_$LoadingSocketModelImpl _value,
      $Res Function(_$LoadingSocketModelImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingSocketModelImpl implements _LoadingSocketModel {
  const _$LoadingSocketModelImpl();

  @override
  String toString() {
    return 'SocketModel.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingSocketModelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) data,
    required TResult Function(String error) error,
    required TResult Function(String message) done,
    required TResult Function() connected,
    required TResult Function() loading,
    required TResult Function() idle,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? data,
    TResult? Function(String error)? error,
    TResult? Function(String message)? done,
    TResult? Function()? connected,
    TResult? Function()? loading,
    TResult? Function()? idle,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? data,
    TResult Function(String error)? error,
    TResult Function(String message)? done,
    TResult Function()? connected,
    TResult Function()? loading,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataSocketModel value) data,
    required TResult Function(_ErrorSocketModel value) error,
    required TResult Function(_DoneSocketModel value) done,
    required TResult Function(_ConnectedSocketModel value) connected,
    required TResult Function(_LoadingSocketModel value) loading,
    required TResult Function(_IDLESocketModel value) idle,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataSocketModel value)? data,
    TResult? Function(_ErrorSocketModel value)? error,
    TResult? Function(_DoneSocketModel value)? done,
    TResult? Function(_ConnectedSocketModel value)? connected,
    TResult? Function(_LoadingSocketModel value)? loading,
    TResult? Function(_IDLESocketModel value)? idle,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataSocketModel value)? data,
    TResult Function(_ErrorSocketModel value)? error,
    TResult Function(_DoneSocketModel value)? done,
    TResult Function(_ConnectedSocketModel value)? connected,
    TResult Function(_LoadingSocketModel value)? loading,
    TResult Function(_IDLESocketModel value)? idle,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingSocketModel implements SocketModel {
  const factory _LoadingSocketModel() = _$LoadingSocketModelImpl;
}

/// @nodoc
abstract class _$$IDLESocketModelImplCopyWith<$Res> {
  factory _$$IDLESocketModelImplCopyWith(_$IDLESocketModelImpl value,
          $Res Function(_$IDLESocketModelImpl) then) =
      __$$IDLESocketModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IDLESocketModelImplCopyWithImpl<$Res>
    extends _$SocketModelCopyWithImpl<$Res, _$IDLESocketModelImpl>
    implements _$$IDLESocketModelImplCopyWith<$Res> {
  __$$IDLESocketModelImplCopyWithImpl(
      _$IDLESocketModelImpl _value, $Res Function(_$IDLESocketModelImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IDLESocketModelImpl implements _IDLESocketModel {
  const _$IDLESocketModelImpl();

  @override
  String toString() {
    return 'SocketModel.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IDLESocketModelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) data,
    required TResult Function(String error) error,
    required TResult Function(String message) done,
    required TResult Function() connected,
    required TResult Function() loading,
    required TResult Function() idle,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? data,
    TResult? Function(String error)? error,
    TResult? Function(String message)? done,
    TResult? Function()? connected,
    TResult? Function()? loading,
    TResult? Function()? idle,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? data,
    TResult Function(String error)? error,
    TResult Function(String message)? done,
    TResult Function()? connected,
    TResult Function()? loading,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataSocketModel value) data,
    required TResult Function(_ErrorSocketModel value) error,
    required TResult Function(_DoneSocketModel value) done,
    required TResult Function(_ConnectedSocketModel value) connected,
    required TResult Function(_LoadingSocketModel value) loading,
    required TResult Function(_IDLESocketModel value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataSocketModel value)? data,
    TResult? Function(_ErrorSocketModel value)? error,
    TResult? Function(_DoneSocketModel value)? done,
    TResult? Function(_ConnectedSocketModel value)? connected,
    TResult? Function(_LoadingSocketModel value)? loading,
    TResult? Function(_IDLESocketModel value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataSocketModel value)? data,
    TResult Function(_ErrorSocketModel value)? error,
    TResult Function(_DoneSocketModel value)? done,
    TResult Function(_ConnectedSocketModel value)? connected,
    TResult Function(_LoadingSocketModel value)? loading,
    TResult Function(_IDLESocketModel value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _IDLESocketModel implements SocketModel {
  const factory _IDLESocketModel() = _$IDLESocketModelImpl;
}
