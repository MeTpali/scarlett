// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String nickname, List<MessageModel> messageList)
        resolved,
    required TResult Function() idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(String nickname, List<MessageModel> messageList)?
        resolved,
    TResult? Function()? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(String nickname, List<MessageModel> messageList)? resolved,
    TResult Function()? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingChatModel value) loading,
    required TResult Function(_ErrorChatModel value) error,
    required TResult Function(_ResolvedChatModel value) resolved,
    required TResult Function(_IDLEChatModel value) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingChatModel value)? loading,
    TResult? Function(_ErrorChatModel value)? error,
    TResult? Function(_ResolvedChatModel value)? resolved,
    TResult? Function(_IDLEChatModel value)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingChatModel value)? loading,
    TResult Function(_ErrorChatModel value)? error,
    TResult Function(_ResolvedChatModel value)? resolved,
    TResult Function(_IDLEChatModel value)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelCopyWith<$Res> {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) then) =
      _$ChatModelCopyWithImpl<$Res, ChatModel>;
}

/// @nodoc
class _$ChatModelCopyWithImpl<$Res, $Val extends ChatModel>
    implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingChatModelImplCopyWith<$Res> {
  factory _$$LoadingChatModelImplCopyWith(_$LoadingChatModelImpl value,
          $Res Function(_$LoadingChatModelImpl) then) =
      __$$LoadingChatModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingChatModelImplCopyWithImpl<$Res>
    extends _$ChatModelCopyWithImpl<$Res, _$LoadingChatModelImpl>
    implements _$$LoadingChatModelImplCopyWith<$Res> {
  __$$LoadingChatModelImplCopyWithImpl(_$LoadingChatModelImpl _value,
      $Res Function(_$LoadingChatModelImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingChatModelImpl implements _LoadingChatModel {
  const _$LoadingChatModelImpl();

  @override
  String toString() {
    return 'ChatModel.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingChatModelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String nickname, List<MessageModel> messageList)
        resolved,
    required TResult Function() idle,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(String nickname, List<MessageModel> messageList)?
        resolved,
    TResult? Function()? idle,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(String nickname, List<MessageModel> messageList)? resolved,
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
    required TResult Function(_LoadingChatModel value) loading,
    required TResult Function(_ErrorChatModel value) error,
    required TResult Function(_ResolvedChatModel value) resolved,
    required TResult Function(_IDLEChatModel value) idle,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingChatModel value)? loading,
    TResult? Function(_ErrorChatModel value)? error,
    TResult? Function(_ResolvedChatModel value)? resolved,
    TResult? Function(_IDLEChatModel value)? idle,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingChatModel value)? loading,
    TResult Function(_ErrorChatModel value)? error,
    TResult Function(_ResolvedChatModel value)? resolved,
    TResult Function(_IDLEChatModel value)? idle,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingChatModel implements ChatModel {
  const factory _LoadingChatModel() = _$LoadingChatModelImpl;
}

/// @nodoc
abstract class _$$ErrorChatModelImplCopyWith<$Res> {
  factory _$$ErrorChatModelImplCopyWith(_$ErrorChatModelImpl value,
          $Res Function(_$ErrorChatModelImpl) then) =
      __$$ErrorChatModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorChatModelImplCopyWithImpl<$Res>
    extends _$ChatModelCopyWithImpl<$Res, _$ErrorChatModelImpl>
    implements _$$ErrorChatModelImplCopyWith<$Res> {
  __$$ErrorChatModelImplCopyWithImpl(
      _$ErrorChatModelImpl _value, $Res Function(_$ErrorChatModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorChatModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorChatModelImpl implements _ErrorChatModel {
  const _$ErrorChatModelImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ChatModel.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorChatModelImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorChatModelImplCopyWith<_$ErrorChatModelImpl> get copyWith =>
      __$$ErrorChatModelImplCopyWithImpl<_$ErrorChatModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String nickname, List<MessageModel> messageList)
        resolved,
    required TResult Function() idle,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(String nickname, List<MessageModel> messageList)?
        resolved,
    TResult? Function()? idle,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(String nickname, List<MessageModel> messageList)? resolved,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingChatModel value) loading,
    required TResult Function(_ErrorChatModel value) error,
    required TResult Function(_ResolvedChatModel value) resolved,
    required TResult Function(_IDLEChatModel value) idle,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingChatModel value)? loading,
    TResult? Function(_ErrorChatModel value)? error,
    TResult? Function(_ResolvedChatModel value)? resolved,
    TResult? Function(_IDLEChatModel value)? idle,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingChatModel value)? loading,
    TResult Function(_ErrorChatModel value)? error,
    TResult Function(_ResolvedChatModel value)? resolved,
    TResult Function(_IDLEChatModel value)? idle,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorChatModel implements ChatModel {
  const factory _ErrorChatModel({required final String message}) =
      _$ErrorChatModelImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorChatModelImplCopyWith<_$ErrorChatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResolvedChatModelImplCopyWith<$Res> {
  factory _$$ResolvedChatModelImplCopyWith(_$ResolvedChatModelImpl value,
          $Res Function(_$ResolvedChatModelImpl) then) =
      __$$ResolvedChatModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String nickname, List<MessageModel> messageList});
}

/// @nodoc
class __$$ResolvedChatModelImplCopyWithImpl<$Res>
    extends _$ChatModelCopyWithImpl<$Res, _$ResolvedChatModelImpl>
    implements _$$ResolvedChatModelImplCopyWith<$Res> {
  __$$ResolvedChatModelImplCopyWithImpl(_$ResolvedChatModelImpl _value,
      $Res Function(_$ResolvedChatModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? messageList = null,
  }) {
    return _then(_$ResolvedChatModelImpl(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      messageList: null == messageList
          ? _value._messageList
          : messageList // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ));
  }
}

/// @nodoc

class _$ResolvedChatModelImpl implements _ResolvedChatModel {
  const _$ResolvedChatModelImpl(
      {required this.nickname, required final List<MessageModel> messageList})
      : _messageList = messageList;

  @override
  final String nickname;
  final List<MessageModel> _messageList;
  @override
  List<MessageModel> get messageList {
    if (_messageList is EqualUnmodifiableListView) return _messageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messageList);
  }

  @override
  String toString() {
    return 'ChatModel.resolved(nickname: $nickname, messageList: $messageList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResolvedChatModelImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            const DeepCollectionEquality()
                .equals(other._messageList, _messageList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, nickname, const DeepCollectionEquality().hash(_messageList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResolvedChatModelImplCopyWith<_$ResolvedChatModelImpl> get copyWith =>
      __$$ResolvedChatModelImplCopyWithImpl<_$ResolvedChatModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String nickname, List<MessageModel> messageList)
        resolved,
    required TResult Function() idle,
  }) {
    return resolved(nickname, messageList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(String nickname, List<MessageModel> messageList)?
        resolved,
    TResult? Function()? idle,
  }) {
    return resolved?.call(nickname, messageList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(String nickname, List<MessageModel> messageList)? resolved,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(nickname, messageList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingChatModel value) loading,
    required TResult Function(_ErrorChatModel value) error,
    required TResult Function(_ResolvedChatModel value) resolved,
    required TResult Function(_IDLEChatModel value) idle,
  }) {
    return resolved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingChatModel value)? loading,
    TResult? Function(_ErrorChatModel value)? error,
    TResult? Function(_ResolvedChatModel value)? resolved,
    TResult? Function(_IDLEChatModel value)? idle,
  }) {
    return resolved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingChatModel value)? loading,
    TResult Function(_ErrorChatModel value)? error,
    TResult Function(_ResolvedChatModel value)? resolved,
    TResult Function(_IDLEChatModel value)? idle,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(this);
    }
    return orElse();
  }
}

abstract class _ResolvedChatModel implements ChatModel {
  const factory _ResolvedChatModel(
      {required final String nickname,
      required final List<MessageModel> messageList}) = _$ResolvedChatModelImpl;

  String get nickname;
  List<MessageModel> get messageList;
  @JsonKey(ignore: true)
  _$$ResolvedChatModelImplCopyWith<_$ResolvedChatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IDLEChatModelImplCopyWith<$Res> {
  factory _$$IDLEChatModelImplCopyWith(
          _$IDLEChatModelImpl value, $Res Function(_$IDLEChatModelImpl) then) =
      __$$IDLEChatModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IDLEChatModelImplCopyWithImpl<$Res>
    extends _$ChatModelCopyWithImpl<$Res, _$IDLEChatModelImpl>
    implements _$$IDLEChatModelImplCopyWith<$Res> {
  __$$IDLEChatModelImplCopyWithImpl(
      _$IDLEChatModelImpl _value, $Res Function(_$IDLEChatModelImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IDLEChatModelImpl implements _IDLEChatModel {
  const _$IDLEChatModelImpl();

  @override
  String toString() {
    return 'ChatModel.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IDLEChatModelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String nickname, List<MessageModel> messageList)
        resolved,
    required TResult Function() idle,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(String nickname, List<MessageModel> messageList)?
        resolved,
    TResult? Function()? idle,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(String nickname, List<MessageModel> messageList)? resolved,
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
    required TResult Function(_LoadingChatModel value) loading,
    required TResult Function(_ErrorChatModel value) error,
    required TResult Function(_ResolvedChatModel value) resolved,
    required TResult Function(_IDLEChatModel value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingChatModel value)? loading,
    TResult? Function(_ErrorChatModel value)? error,
    TResult? Function(_ResolvedChatModel value)? resolved,
    TResult? Function(_IDLEChatModel value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingChatModel value)? loading,
    TResult Function(_ErrorChatModel value)? error,
    TResult Function(_ResolvedChatModel value)? resolved,
    TResult Function(_IDLEChatModel value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _IDLEChatModel implements ChatModel {
  const factory _IDLEChatModel() = _$IDLEChatModelImpl;
}
