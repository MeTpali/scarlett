// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConnectionSettings {
  String get nickname => throw _privateConstructorUsedError;
  String get host => throw _privateConstructorUsedError;
  Object get port => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nickname, String host, String port)
        uncompleted,
    required TResult Function(String nickname, String host, int port) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nickname, String host, String port)? uncompleted,
    TResult? Function(String nickname, String host, int port)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nickname, String host, String port)? uncompleted,
    TResult Function(String nickname, String host, int port)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionSettingsUncompleted value) uncompleted,
    required TResult Function(_ConnectionSettingsCompleted value) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectionSettingsUncompleted value)? uncompleted,
    TResult? Function(_ConnectionSettingsCompleted value)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionSettingsUncompleted value)? uncompleted,
    TResult Function(_ConnectionSettingsCompleted value)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectionSettingsCopyWith<ConnectionSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionSettingsCopyWith<$Res> {
  factory $ConnectionSettingsCopyWith(
          ConnectionSettings value, $Res Function(ConnectionSettings) then) =
      _$ConnectionSettingsCopyWithImpl<$Res, ConnectionSettings>;
  @useResult
  $Res call({String nickname, String host});
}

/// @nodoc
class _$ConnectionSettingsCopyWithImpl<$Res, $Val extends ConnectionSettings>
    implements $ConnectionSettingsCopyWith<$Res> {
  _$ConnectionSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? host = null,
  }) {
    return _then(_value.copyWith(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConnectionSettingsUncompletedImplCopyWith<$Res>
    implements $ConnectionSettingsCopyWith<$Res> {
  factory _$$ConnectionSettingsUncompletedImplCopyWith(
          _$ConnectionSettingsUncompletedImpl value,
          $Res Function(_$ConnectionSettingsUncompletedImpl) then) =
      __$$ConnectionSettingsUncompletedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nickname, String host, String port});
}

/// @nodoc
class __$$ConnectionSettingsUncompletedImplCopyWithImpl<$Res>
    extends _$ConnectionSettingsCopyWithImpl<$Res,
        _$ConnectionSettingsUncompletedImpl>
    implements _$$ConnectionSettingsUncompletedImplCopyWith<$Res> {
  __$$ConnectionSettingsUncompletedImplCopyWithImpl(
      _$ConnectionSettingsUncompletedImpl _value,
      $Res Function(_$ConnectionSettingsUncompletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? host = null,
    Object? port = null,
  }) {
    return _then(_$ConnectionSettingsUncompletedImpl(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConnectionSettingsUncompletedImpl
    implements _ConnectionSettingsUncompleted {
  const _$ConnectionSettingsUncompletedImpl(
      {this.nickname = '', this.host = '', this.port = ''});

  @override
  @JsonKey()
  final String nickname;
  @override
  @JsonKey()
  final String host;
  @override
  @JsonKey()
  final String port;

  @override
  String toString() {
    return 'ConnectionSettings.uncompleted(nickname: $nickname, host: $host, port: $port)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionSettingsUncompletedImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.port, port) || other.port == port));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nickname, host, port);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionSettingsUncompletedImplCopyWith<
          _$ConnectionSettingsUncompletedImpl>
      get copyWith => __$$ConnectionSettingsUncompletedImplCopyWithImpl<
          _$ConnectionSettingsUncompletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nickname, String host, String port)
        uncompleted,
    required TResult Function(String nickname, String host, int port) completed,
  }) {
    return uncompleted(nickname, host, port);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nickname, String host, String port)? uncompleted,
    TResult? Function(String nickname, String host, int port)? completed,
  }) {
    return uncompleted?.call(nickname, host, port);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nickname, String host, String port)? uncompleted,
    TResult Function(String nickname, String host, int port)? completed,
    required TResult orElse(),
  }) {
    if (uncompleted != null) {
      return uncompleted(nickname, host, port);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionSettingsUncompleted value) uncompleted,
    required TResult Function(_ConnectionSettingsCompleted value) completed,
  }) {
    return uncompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectionSettingsUncompleted value)? uncompleted,
    TResult? Function(_ConnectionSettingsCompleted value)? completed,
  }) {
    return uncompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionSettingsUncompleted value)? uncompleted,
    TResult Function(_ConnectionSettingsCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (uncompleted != null) {
      return uncompleted(this);
    }
    return orElse();
  }
}

abstract class _ConnectionSettingsUncompleted implements ConnectionSettings {
  const factory _ConnectionSettingsUncompleted(
      {final String nickname,
      final String host,
      final String port}) = _$ConnectionSettingsUncompletedImpl;

  @override
  String get nickname;
  @override
  String get host;
  @override
  String get port;
  @override
  @JsonKey(ignore: true)
  _$$ConnectionSettingsUncompletedImplCopyWith<
          _$ConnectionSettingsUncompletedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionSettingsCompletedImplCopyWith<$Res>
    implements $ConnectionSettingsCopyWith<$Res> {
  factory _$$ConnectionSettingsCompletedImplCopyWith(
          _$ConnectionSettingsCompletedImpl value,
          $Res Function(_$ConnectionSettingsCompletedImpl) then) =
      __$$ConnectionSettingsCompletedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nickname, String host, int port});
}

/// @nodoc
class __$$ConnectionSettingsCompletedImplCopyWithImpl<$Res>
    extends _$ConnectionSettingsCopyWithImpl<$Res,
        _$ConnectionSettingsCompletedImpl>
    implements _$$ConnectionSettingsCompletedImplCopyWith<$Res> {
  __$$ConnectionSettingsCompletedImplCopyWithImpl(
      _$ConnectionSettingsCompletedImpl _value,
      $Res Function(_$ConnectionSettingsCompletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? host = null,
    Object? port = null,
  }) {
    return _then(_$ConnectionSettingsCompletedImpl(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ConnectionSettingsCompletedImpl
    implements _ConnectionSettingsCompleted {
  const _$ConnectionSettingsCompletedImpl(
      {required this.nickname, required this.host, required this.port});

  @override
  final String nickname;
  @override
  final String host;
  @override
  final int port;

  @override
  String toString() {
    return 'ConnectionSettings.completed(nickname: $nickname, host: $host, port: $port)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionSettingsCompletedImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.port, port) || other.port == port));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nickname, host, port);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionSettingsCompletedImplCopyWith<_$ConnectionSettingsCompletedImpl>
      get copyWith => __$$ConnectionSettingsCompletedImplCopyWithImpl<
          _$ConnectionSettingsCompletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nickname, String host, String port)
        uncompleted,
    required TResult Function(String nickname, String host, int port) completed,
  }) {
    return completed(nickname, host, port);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nickname, String host, String port)? uncompleted,
    TResult? Function(String nickname, String host, int port)? completed,
  }) {
    return completed?.call(nickname, host, port);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nickname, String host, String port)? uncompleted,
    TResult Function(String nickname, String host, int port)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(nickname, host, port);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionSettingsUncompleted value) uncompleted,
    required TResult Function(_ConnectionSettingsCompleted value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectionSettingsUncompleted value)? uncompleted,
    TResult? Function(_ConnectionSettingsCompleted value)? completed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionSettingsUncompleted value)? uncompleted,
    TResult Function(_ConnectionSettingsCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _ConnectionSettingsCompleted implements ConnectionSettings {
  const factory _ConnectionSettingsCompleted(
      {required final String nickname,
      required final String host,
      required final int port}) = _$ConnectionSettingsCompletedImpl;

  @override
  String get nickname;
  @override
  String get host;
  @override
  int get port;
  @override
  @JsonKey(ignore: true)
  _$$ConnectionSettingsCompletedImplCopyWith<_$ConnectionSettingsCompletedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
