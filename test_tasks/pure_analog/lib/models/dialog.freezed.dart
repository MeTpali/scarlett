// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dialog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DialogModel _$DialogModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'resolved':
      return _DialogModelResolved.fromJson(json);
    case 'error':
      return _DialogModelError.fromJson(json);
    case 'loading':
      return _DialogModelLoading.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'DialogModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$DialogModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'avatar_id') int avatarId,
            @JsonKey(name: 'user_id') String userId,
            @JsonKey(name: 'has_story') bool hasStory,
            @JsonKey(name: 'temptation_count') int temptationCount,
            @JsonKey(name: 'messages') List<PureMessageModel> messages)
        resolved,
    required TResult Function(String? message) error,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'avatar_id') int avatarId,
            @JsonKey(name: 'user_id') String userId,
            @JsonKey(name: 'has_story') bool hasStory,
            @JsonKey(name: 'temptation_count') int temptationCount,
            @JsonKey(name: 'messages') List<PureMessageModel> messages)?
        resolved,
    TResult? Function(String? message)? error,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'avatar_id') int avatarId,
            @JsonKey(name: 'user_id') String userId,
            @JsonKey(name: 'has_story') bool hasStory,
            @JsonKey(name: 'temptation_count') int temptationCount,
            @JsonKey(name: 'messages') List<PureMessageModel> messages)?
        resolved,
    TResult Function(String? message)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DialogModelResolved value) resolved,
    required TResult Function(_DialogModelError value) error,
    required TResult Function(_DialogModelLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DialogModelResolved value)? resolved,
    TResult? Function(_DialogModelError value)? error,
    TResult? Function(_DialogModelLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DialogModelResolved value)? resolved,
    TResult Function(_DialogModelError value)? error,
    TResult Function(_DialogModelLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this DialogModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DialogModelCopyWith<$Res> {
  factory $DialogModelCopyWith(
          DialogModel value, $Res Function(DialogModel) then) =
      _$DialogModelCopyWithImpl<$Res, DialogModel>;
}

/// @nodoc
class _$DialogModelCopyWithImpl<$Res, $Val extends DialogModel>
    implements $DialogModelCopyWith<$Res> {
  _$DialogModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DialogModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DialogModelResolvedImplCopyWith<$Res> {
  factory _$$DialogModelResolvedImplCopyWith(_$DialogModelResolvedImpl value,
          $Res Function(_$DialogModelResolvedImpl) then) =
      __$$DialogModelResolvedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'avatar_id') int avatarId,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'has_story') bool hasStory,
      @JsonKey(name: 'temptation_count') int temptationCount,
      @JsonKey(name: 'messages') List<PureMessageModel> messages});
}

/// @nodoc
class __$$DialogModelResolvedImplCopyWithImpl<$Res>
    extends _$DialogModelCopyWithImpl<$Res, _$DialogModelResolvedImpl>
    implements _$$DialogModelResolvedImplCopyWith<$Res> {
  __$$DialogModelResolvedImplCopyWithImpl(_$DialogModelResolvedImpl _value,
      $Res Function(_$DialogModelResolvedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DialogModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarId = null,
    Object? userId = null,
    Object? hasStory = null,
    Object? temptationCount = null,
    Object? messages = null,
  }) {
    return _then(_$DialogModelResolvedImpl(
      avatarId: null == avatarId
          ? _value.avatarId
          : avatarId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      hasStory: null == hasStory
          ? _value.hasStory
          : hasStory // ignore: cast_nullable_to_non_nullable
              as bool,
      temptationCount: null == temptationCount
          ? _value.temptationCount
          : temptationCount // ignore: cast_nullable_to_non_nullable
              as int,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<PureMessageModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DialogModelResolvedImpl implements _DialogModelResolved {
  _$DialogModelResolvedImpl(
      {@JsonKey(name: 'avatar_id') required this.avatarId,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'has_story') required this.hasStory,
      @JsonKey(name: 'temptation_count') required this.temptationCount,
      @JsonKey(name: 'messages') required final List<PureMessageModel> messages,
      final String? $type})
      : _messages = messages,
        $type = $type ?? 'resolved';

  factory _$DialogModelResolvedImpl.fromJson(Map<String, dynamic> json) =>
      _$$DialogModelResolvedImplFromJson(json);

  @override
  @JsonKey(name: 'avatar_id')
  final int avatarId;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'has_story')
  final bool hasStory;
  @override
  @JsonKey(name: 'temptation_count')
  final int temptationCount;
  final List<PureMessageModel> _messages;
  @override
  @JsonKey(name: 'messages')
  List<PureMessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DialogModel.resolved(avatarId: $avatarId, userId: $userId, hasStory: $hasStory, temptationCount: $temptationCount, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DialogModelResolvedImpl &&
            (identical(other.avatarId, avatarId) ||
                other.avatarId == avatarId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.hasStory, hasStory) ||
                other.hasStory == hasStory) &&
            (identical(other.temptationCount, temptationCount) ||
                other.temptationCount == temptationCount) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, avatarId, userId, hasStory,
      temptationCount, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of DialogModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DialogModelResolvedImplCopyWith<_$DialogModelResolvedImpl> get copyWith =>
      __$$DialogModelResolvedImplCopyWithImpl<_$DialogModelResolvedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'avatar_id') int avatarId,
            @JsonKey(name: 'user_id') String userId,
            @JsonKey(name: 'has_story') bool hasStory,
            @JsonKey(name: 'temptation_count') int temptationCount,
            @JsonKey(name: 'messages') List<PureMessageModel> messages)
        resolved,
    required TResult Function(String? message) error,
    required TResult Function() loading,
  }) {
    return resolved(avatarId, userId, hasStory, temptationCount, messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'avatar_id') int avatarId,
            @JsonKey(name: 'user_id') String userId,
            @JsonKey(name: 'has_story') bool hasStory,
            @JsonKey(name: 'temptation_count') int temptationCount,
            @JsonKey(name: 'messages') List<PureMessageModel> messages)?
        resolved,
    TResult? Function(String? message)? error,
    TResult? Function()? loading,
  }) {
    return resolved?.call(
        avatarId, userId, hasStory, temptationCount, messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'avatar_id') int avatarId,
            @JsonKey(name: 'user_id') String userId,
            @JsonKey(name: 'has_story') bool hasStory,
            @JsonKey(name: 'temptation_count') int temptationCount,
            @JsonKey(name: 'messages') List<PureMessageModel> messages)?
        resolved,
    TResult Function(String? message)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(avatarId, userId, hasStory, temptationCount, messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DialogModelResolved value) resolved,
    required TResult Function(_DialogModelError value) error,
    required TResult Function(_DialogModelLoading value) loading,
  }) {
    return resolved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DialogModelResolved value)? resolved,
    TResult? Function(_DialogModelError value)? error,
    TResult? Function(_DialogModelLoading value)? loading,
  }) {
    return resolved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DialogModelResolved value)? resolved,
    TResult Function(_DialogModelError value)? error,
    TResult Function(_DialogModelLoading value)? loading,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DialogModelResolvedImplToJson(
      this,
    );
  }
}

abstract class _DialogModelResolved implements DialogModel {
  factory _DialogModelResolved(
          {@JsonKey(name: 'avatar_id') required final int avatarId,
          @JsonKey(name: 'user_id') required final String userId,
          @JsonKey(name: 'has_story') required final bool hasStory,
          @JsonKey(name: 'temptation_count') required final int temptationCount,
          @JsonKey(name: 'messages')
          required final List<PureMessageModel> messages}) =
      _$DialogModelResolvedImpl;

  factory _DialogModelResolved.fromJson(Map<String, dynamic> json) =
      _$DialogModelResolvedImpl.fromJson;

  @JsonKey(name: 'avatar_id')
  int get avatarId;
  @JsonKey(name: 'user_id')
  String get userId;
  @JsonKey(name: 'has_story')
  bool get hasStory;
  @JsonKey(name: 'temptation_count')
  int get temptationCount;
  @JsonKey(name: 'messages')
  List<PureMessageModel> get messages;

  /// Create a copy of DialogModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DialogModelResolvedImplCopyWith<_$DialogModelResolvedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DialogModelErrorImplCopyWith<$Res> {
  factory _$$DialogModelErrorImplCopyWith(_$DialogModelErrorImpl value,
          $Res Function(_$DialogModelErrorImpl) then) =
      __$$DialogModelErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$DialogModelErrorImplCopyWithImpl<$Res>
    extends _$DialogModelCopyWithImpl<$Res, _$DialogModelErrorImpl>
    implements _$$DialogModelErrorImplCopyWith<$Res> {
  __$$DialogModelErrorImplCopyWithImpl(_$DialogModelErrorImpl _value,
      $Res Function(_$DialogModelErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DialogModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$DialogModelErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DialogModelErrorImpl implements _DialogModelError {
  _$DialogModelErrorImpl({this.message, final String? $type})
      : $type = $type ?? 'error';

  factory _$DialogModelErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$DialogModelErrorImplFromJson(json);

  @override
  final String? message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DialogModel.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DialogModelErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DialogModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DialogModelErrorImplCopyWith<_$DialogModelErrorImpl> get copyWith =>
      __$$DialogModelErrorImplCopyWithImpl<_$DialogModelErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'avatar_id') int avatarId,
            @JsonKey(name: 'user_id') String userId,
            @JsonKey(name: 'has_story') bool hasStory,
            @JsonKey(name: 'temptation_count') int temptationCount,
            @JsonKey(name: 'messages') List<PureMessageModel> messages)
        resolved,
    required TResult Function(String? message) error,
    required TResult Function() loading,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'avatar_id') int avatarId,
            @JsonKey(name: 'user_id') String userId,
            @JsonKey(name: 'has_story') bool hasStory,
            @JsonKey(name: 'temptation_count') int temptationCount,
            @JsonKey(name: 'messages') List<PureMessageModel> messages)?
        resolved,
    TResult? Function(String? message)? error,
    TResult? Function()? loading,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'avatar_id') int avatarId,
            @JsonKey(name: 'user_id') String userId,
            @JsonKey(name: 'has_story') bool hasStory,
            @JsonKey(name: 'temptation_count') int temptationCount,
            @JsonKey(name: 'messages') List<PureMessageModel> messages)?
        resolved,
    TResult Function(String? message)? error,
    TResult Function()? loading,
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
    required TResult Function(_DialogModelResolved value) resolved,
    required TResult Function(_DialogModelError value) error,
    required TResult Function(_DialogModelLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DialogModelResolved value)? resolved,
    TResult? Function(_DialogModelError value)? error,
    TResult? Function(_DialogModelLoading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DialogModelResolved value)? resolved,
    TResult Function(_DialogModelError value)? error,
    TResult Function(_DialogModelLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DialogModelErrorImplToJson(
      this,
    );
  }
}

abstract class _DialogModelError implements DialogModel {
  factory _DialogModelError({final String? message}) = _$DialogModelErrorImpl;

  factory _DialogModelError.fromJson(Map<String, dynamic> json) =
      _$DialogModelErrorImpl.fromJson;

  String? get message;

  /// Create a copy of DialogModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DialogModelErrorImplCopyWith<_$DialogModelErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DialogModelLoadingImplCopyWith<$Res> {
  factory _$$DialogModelLoadingImplCopyWith(_$DialogModelLoadingImpl value,
          $Res Function(_$DialogModelLoadingImpl) then) =
      __$$DialogModelLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DialogModelLoadingImplCopyWithImpl<$Res>
    extends _$DialogModelCopyWithImpl<$Res, _$DialogModelLoadingImpl>
    implements _$$DialogModelLoadingImplCopyWith<$Res> {
  __$$DialogModelLoadingImplCopyWithImpl(_$DialogModelLoadingImpl _value,
      $Res Function(_$DialogModelLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DialogModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$DialogModelLoadingImpl implements _DialogModelLoading {
  _$DialogModelLoadingImpl({final String? $type}) : $type = $type ?? 'loading';

  factory _$DialogModelLoadingImpl.fromJson(Map<String, dynamic> json) =>
      _$$DialogModelLoadingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DialogModel.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DialogModelLoadingImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'avatar_id') int avatarId,
            @JsonKey(name: 'user_id') String userId,
            @JsonKey(name: 'has_story') bool hasStory,
            @JsonKey(name: 'temptation_count') int temptationCount,
            @JsonKey(name: 'messages') List<PureMessageModel> messages)
        resolved,
    required TResult Function(String? message) error,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'avatar_id') int avatarId,
            @JsonKey(name: 'user_id') String userId,
            @JsonKey(name: 'has_story') bool hasStory,
            @JsonKey(name: 'temptation_count') int temptationCount,
            @JsonKey(name: 'messages') List<PureMessageModel> messages)?
        resolved,
    TResult? Function(String? message)? error,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'avatar_id') int avatarId,
            @JsonKey(name: 'user_id') String userId,
            @JsonKey(name: 'has_story') bool hasStory,
            @JsonKey(name: 'temptation_count') int temptationCount,
            @JsonKey(name: 'messages') List<PureMessageModel> messages)?
        resolved,
    TResult Function(String? message)? error,
    TResult Function()? loading,
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
    required TResult Function(_DialogModelResolved value) resolved,
    required TResult Function(_DialogModelError value) error,
    required TResult Function(_DialogModelLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DialogModelResolved value)? resolved,
    TResult? Function(_DialogModelError value)? error,
    TResult? Function(_DialogModelLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DialogModelResolved value)? resolved,
    TResult Function(_DialogModelError value)? error,
    TResult Function(_DialogModelLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DialogModelLoadingImplToJson(
      this,
    );
  }
}

abstract class _DialogModelLoading implements DialogModel {
  factory _DialogModelLoading() = _$DialogModelLoadingImpl;

  factory _DialogModelLoading.fromJson(Map<String, dynamic> json) =
      _$DialogModelLoadingImpl.fromJson;
}
