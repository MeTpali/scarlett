// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LogModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MessageModel> messages) resolved,
    required TResult Function() empty,
    required TResult Function() idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MessageModel> messages)? resolved,
    TResult? Function()? empty,
    TResult? Function()? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MessageModel> messages)? resolved,
    TResult Function()? empty,
    TResult Function()? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResolvedLogModel value) resolved,
    required TResult Function(_EmptyLogModel value) empty,
    required TResult Function(_IdleLogModel value) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResolvedLogModel value)? resolved,
    TResult? Function(_EmptyLogModel value)? empty,
    TResult? Function(_IdleLogModel value)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResolvedLogModel value)? resolved,
    TResult Function(_EmptyLogModel value)? empty,
    TResult Function(_IdleLogModel value)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogModelCopyWith<$Res> {
  factory $LogModelCopyWith(LogModel value, $Res Function(LogModel) then) =
      _$LogModelCopyWithImpl<$Res, LogModel>;
}

/// @nodoc
class _$LogModelCopyWithImpl<$Res, $Val extends LogModel>
    implements $LogModelCopyWith<$Res> {
  _$LogModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ResolvedLogModelImplCopyWith<$Res> {
  factory _$$ResolvedLogModelImplCopyWith(_$ResolvedLogModelImpl value,
          $Res Function(_$ResolvedLogModelImpl) then) =
      __$$ResolvedLogModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MessageModel> messages});
}

/// @nodoc
class __$$ResolvedLogModelImplCopyWithImpl<$Res>
    extends _$LogModelCopyWithImpl<$Res, _$ResolvedLogModelImpl>
    implements _$$ResolvedLogModelImplCopyWith<$Res> {
  __$$ResolvedLogModelImplCopyWithImpl(_$ResolvedLogModelImpl _value,
      $Res Function(_$ResolvedLogModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$ResolvedLogModelImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ));
  }
}

/// @nodoc

class _$ResolvedLogModelImpl implements _ResolvedLogModel {
  const _$ResolvedLogModelImpl({required final List<MessageModel> messages})
      : assert(messages.length > 0, 'Message list should not be empty'),
        _messages = messages;

  final List<MessageModel> _messages;
  @override
  List<MessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'LogModel.resolved(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResolvedLogModelImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResolvedLogModelImplCopyWith<_$ResolvedLogModelImpl> get copyWith =>
      __$$ResolvedLogModelImplCopyWithImpl<_$ResolvedLogModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MessageModel> messages) resolved,
    required TResult Function() empty,
    required TResult Function() idle,
  }) {
    return resolved(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MessageModel> messages)? resolved,
    TResult? Function()? empty,
    TResult? Function()? idle,
  }) {
    return resolved?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MessageModel> messages)? resolved,
    TResult Function()? empty,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResolvedLogModel value) resolved,
    required TResult Function(_EmptyLogModel value) empty,
    required TResult Function(_IdleLogModel value) idle,
  }) {
    return resolved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResolvedLogModel value)? resolved,
    TResult? Function(_EmptyLogModel value)? empty,
    TResult? Function(_IdleLogModel value)? idle,
  }) {
    return resolved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResolvedLogModel value)? resolved,
    TResult Function(_EmptyLogModel value)? empty,
    TResult Function(_IdleLogModel value)? idle,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(this);
    }
    return orElse();
  }
}

abstract class _ResolvedLogModel implements LogModel {
  const factory _ResolvedLogModel(
      {required final List<MessageModel> messages}) = _$ResolvedLogModelImpl;

  List<MessageModel> get messages;
  @JsonKey(ignore: true)
  _$$ResolvedLogModelImplCopyWith<_$ResolvedLogModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyLogModelImplCopyWith<$Res> {
  factory _$$EmptyLogModelImplCopyWith(
          _$EmptyLogModelImpl value, $Res Function(_$EmptyLogModelImpl) then) =
      __$$EmptyLogModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyLogModelImplCopyWithImpl<$Res>
    extends _$LogModelCopyWithImpl<$Res, _$EmptyLogModelImpl>
    implements _$$EmptyLogModelImplCopyWith<$Res> {
  __$$EmptyLogModelImplCopyWithImpl(
      _$EmptyLogModelImpl _value, $Res Function(_$EmptyLogModelImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyLogModelImpl implements _EmptyLogModel {
  const _$EmptyLogModelImpl();

  @override
  String toString() {
    return 'LogModel.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyLogModelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MessageModel> messages) resolved,
    required TResult Function() empty,
    required TResult Function() idle,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MessageModel> messages)? resolved,
    TResult? Function()? empty,
    TResult? Function()? idle,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MessageModel> messages)? resolved,
    TResult Function()? empty,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResolvedLogModel value) resolved,
    required TResult Function(_EmptyLogModel value) empty,
    required TResult Function(_IdleLogModel value) idle,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResolvedLogModel value)? resolved,
    TResult? Function(_EmptyLogModel value)? empty,
    TResult? Function(_IdleLogModel value)? idle,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResolvedLogModel value)? resolved,
    TResult Function(_EmptyLogModel value)? empty,
    TResult Function(_IdleLogModel value)? idle,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _EmptyLogModel implements LogModel {
  const factory _EmptyLogModel() = _$EmptyLogModelImpl;
}

/// @nodoc
abstract class _$$IdleLogModelImplCopyWith<$Res> {
  factory _$$IdleLogModelImplCopyWith(
          _$IdleLogModelImpl value, $Res Function(_$IdleLogModelImpl) then) =
      __$$IdleLogModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleLogModelImplCopyWithImpl<$Res>
    extends _$LogModelCopyWithImpl<$Res, _$IdleLogModelImpl>
    implements _$$IdleLogModelImplCopyWith<$Res> {
  __$$IdleLogModelImplCopyWithImpl(
      _$IdleLogModelImpl _value, $Res Function(_$IdleLogModelImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IdleLogModelImpl implements _IdleLogModel {
  const _$IdleLogModelImpl();

  @override
  String toString() {
    return 'LogModel.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleLogModelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MessageModel> messages) resolved,
    required TResult Function() empty,
    required TResult Function() idle,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MessageModel> messages)? resolved,
    TResult? Function()? empty,
    TResult? Function()? idle,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MessageModel> messages)? resolved,
    TResult Function()? empty,
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
    required TResult Function(_ResolvedLogModel value) resolved,
    required TResult Function(_EmptyLogModel value) empty,
    required TResult Function(_IdleLogModel value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResolvedLogModel value)? resolved,
    TResult? Function(_EmptyLogModel value)? empty,
    TResult? Function(_IdleLogModel value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResolvedLogModel value)? resolved,
    TResult Function(_EmptyLogModel value)? empty,
    TResult Function(_IdleLogModel value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _IdleLogModel implements LogModel {
  const factory _IdleLogModel() = _$IdleLogModelImpl;
}
