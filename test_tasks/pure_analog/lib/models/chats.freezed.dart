// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatsModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatModel> chats) resolved,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatModel> chats)? resolved,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatModel> chats)? resolved,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatsModelResolved value) resolved,
    required TResult Function(_ChatsModelLoading value) loading,
    required TResult Function(_ChatsModelError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatsModelResolved value)? resolved,
    TResult? Function(_ChatsModelLoading value)? loading,
    TResult? Function(_ChatsModelError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatsModelResolved value)? resolved,
    TResult Function(_ChatsModelLoading value)? loading,
    TResult Function(_ChatsModelError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsModelCopyWith<$Res> {
  factory $ChatsModelCopyWith(
          ChatsModel value, $Res Function(ChatsModel) then) =
      _$ChatsModelCopyWithImpl<$Res, ChatsModel>;
}

/// @nodoc
class _$ChatsModelCopyWithImpl<$Res, $Val extends ChatsModel>
    implements $ChatsModelCopyWith<$Res> {
  _$ChatsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatsModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChatsModelResolvedImplCopyWith<$Res> {
  factory _$$ChatsModelResolvedImplCopyWith(_$ChatsModelResolvedImpl value,
          $Res Function(_$ChatsModelResolvedImpl) then) =
      __$$ChatsModelResolvedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatModel> chats});
}

/// @nodoc
class __$$ChatsModelResolvedImplCopyWithImpl<$Res>
    extends _$ChatsModelCopyWithImpl<$Res, _$ChatsModelResolvedImpl>
    implements _$$ChatsModelResolvedImplCopyWith<$Res> {
  __$$ChatsModelResolvedImplCopyWithImpl(_$ChatsModelResolvedImpl _value,
      $Res Function(_$ChatsModelResolvedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
  }) {
    return _then(_$ChatsModelResolvedImpl(
      chats: null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<ChatModel>,
    ));
  }
}

/// @nodoc

class _$ChatsModelResolvedImpl implements _ChatsModelResolved {
  _$ChatsModelResolvedImpl({required final List<ChatModel> chats})
      : _chats = chats;

  final List<ChatModel> _chats;
  @override
  List<ChatModel> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  @override
  String toString() {
    return 'ChatsModel.resolved(chats: $chats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatsModelResolvedImpl &&
            const DeepCollectionEquality().equals(other._chats, _chats));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_chats));

  /// Create a copy of ChatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatsModelResolvedImplCopyWith<_$ChatsModelResolvedImpl> get copyWith =>
      __$$ChatsModelResolvedImplCopyWithImpl<_$ChatsModelResolvedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatModel> chats) resolved,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return resolved(chats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatModel> chats)? resolved,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
  }) {
    return resolved?.call(chats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatModel> chats)? resolved,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(chats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatsModelResolved value) resolved,
    required TResult Function(_ChatsModelLoading value) loading,
    required TResult Function(_ChatsModelError value) error,
  }) {
    return resolved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatsModelResolved value)? resolved,
    TResult? Function(_ChatsModelLoading value)? loading,
    TResult? Function(_ChatsModelError value)? error,
  }) {
    return resolved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatsModelResolved value)? resolved,
    TResult Function(_ChatsModelLoading value)? loading,
    TResult Function(_ChatsModelError value)? error,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(this);
    }
    return orElse();
  }
}

abstract class _ChatsModelResolved implements ChatsModel {
  factory _ChatsModelResolved({required final List<ChatModel> chats}) =
      _$ChatsModelResolvedImpl;

  List<ChatModel> get chats;

  /// Create a copy of ChatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatsModelResolvedImplCopyWith<_$ChatsModelResolvedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatsModelLoadingImplCopyWith<$Res> {
  factory _$$ChatsModelLoadingImplCopyWith(_$ChatsModelLoadingImpl value,
          $Res Function(_$ChatsModelLoadingImpl) then) =
      __$$ChatsModelLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatsModelLoadingImplCopyWithImpl<$Res>
    extends _$ChatsModelCopyWithImpl<$Res, _$ChatsModelLoadingImpl>
    implements _$$ChatsModelLoadingImplCopyWith<$Res> {
  __$$ChatsModelLoadingImplCopyWithImpl(_$ChatsModelLoadingImpl _value,
      $Res Function(_$ChatsModelLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatsModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChatsModelLoadingImpl implements _ChatsModelLoading {
  _$ChatsModelLoadingImpl();

  @override
  String toString() {
    return 'ChatsModel.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatsModelLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatModel> chats) resolved,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatModel> chats)? resolved,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatModel> chats)? resolved,
    TResult Function()? loading,
    TResult Function(String? message)? error,
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
    required TResult Function(_ChatsModelResolved value) resolved,
    required TResult Function(_ChatsModelLoading value) loading,
    required TResult Function(_ChatsModelError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatsModelResolved value)? resolved,
    TResult? Function(_ChatsModelLoading value)? loading,
    TResult? Function(_ChatsModelError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatsModelResolved value)? resolved,
    TResult Function(_ChatsModelLoading value)? loading,
    TResult Function(_ChatsModelError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ChatsModelLoading implements ChatsModel {
  factory _ChatsModelLoading() = _$ChatsModelLoadingImpl;
}

/// @nodoc
abstract class _$$ChatsModelErrorImplCopyWith<$Res> {
  factory _$$ChatsModelErrorImplCopyWith(_$ChatsModelErrorImpl value,
          $Res Function(_$ChatsModelErrorImpl) then) =
      __$$ChatsModelErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ChatsModelErrorImplCopyWithImpl<$Res>
    extends _$ChatsModelCopyWithImpl<$Res, _$ChatsModelErrorImpl>
    implements _$$ChatsModelErrorImplCopyWith<$Res> {
  __$$ChatsModelErrorImplCopyWithImpl(
      _$ChatsModelErrorImpl _value, $Res Function(_$ChatsModelErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ChatsModelErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChatsModelErrorImpl implements _ChatsModelError {
  _$ChatsModelErrorImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ChatsModel.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatsModelErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatsModelErrorImplCopyWith<_$ChatsModelErrorImpl> get copyWith =>
      __$$ChatsModelErrorImplCopyWithImpl<_$ChatsModelErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatModel> chats) resolved,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatModel> chats)? resolved,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatModel> chats)? resolved,
    TResult Function()? loading,
    TResult Function(String? message)? error,
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
    required TResult Function(_ChatsModelResolved value) resolved,
    required TResult Function(_ChatsModelLoading value) loading,
    required TResult Function(_ChatsModelError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatsModelResolved value)? resolved,
    TResult? Function(_ChatsModelLoading value)? loading,
    TResult? Function(_ChatsModelError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatsModelResolved value)? resolved,
    TResult Function(_ChatsModelLoading value)? loading,
    TResult Function(_ChatsModelError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ChatsModelError implements ChatsModel {
  factory _ChatsModelError({final String? message}) = _$ChatsModelErrorImpl;

  String? get message;

  /// Create a copy of ChatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatsModelErrorImplCopyWith<_$ChatsModelErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
