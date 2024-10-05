// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracker_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrackerState {
  DateTime get periodStart => throw _privateConstructorUsedError;
  DateTime get periodEnd => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime periodStart, DateTime periodEnd, List<FolderModel> folders)
        resolved,
    required TResult Function(DateTime periodStart, DateTime periodEnd) loading,
    required TResult Function(
            DateTime periodStart, DateTime periodEnd, MessagesModel? message)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime periodStart, DateTime periodEnd,
            List<FolderModel> folders)?
        resolved,
    TResult? Function(DateTime periodStart, DateTime periodEnd)? loading,
    TResult? Function(
            DateTime periodStart, DateTime periodEnd, MessagesModel? message)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime periodStart, DateTime periodEnd,
            List<FolderModel> folders)?
        resolved,
    TResult Function(DateTime periodStart, DateTime periodEnd)? loading,
    TResult Function(
            DateTime periodStart, DateTime periodEnd, MessagesModel? message)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrackerStateResolved value) resolved,
    required TResult Function(_TrackerStateLoading value) loading,
    required TResult Function(_TrackerStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrackerStateResolved value)? resolved,
    TResult? Function(_TrackerStateLoading value)? loading,
    TResult? Function(_TrackerStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrackerStateResolved value)? resolved,
    TResult Function(_TrackerStateLoading value)? loading,
    TResult Function(_TrackerStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of TrackerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrackerStateCopyWith<TrackerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackerStateCopyWith<$Res> {
  factory $TrackerStateCopyWith(
          TrackerState value, $Res Function(TrackerState) then) =
      _$TrackerStateCopyWithImpl<$Res, TrackerState>;
  @useResult
  $Res call({DateTime periodStart, DateTime periodEnd});
}

/// @nodoc
class _$TrackerStateCopyWithImpl<$Res, $Val extends TrackerState>
    implements $TrackerStateCopyWith<$Res> {
  _$TrackerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? periodStart = null,
    Object? periodEnd = null,
  }) {
    return _then(_value.copyWith(
      periodStart: null == periodStart
          ? _value.periodStart
          : periodStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      periodEnd: null == periodEnd
          ? _value.periodEnd
          : periodEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackerStateResolvedImplCopyWith<$Res>
    implements $TrackerStateCopyWith<$Res> {
  factory _$$TrackerStateResolvedImplCopyWith(_$TrackerStateResolvedImpl value,
          $Res Function(_$TrackerStateResolvedImpl) then) =
      __$$TrackerStateResolvedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime periodStart, DateTime periodEnd, List<FolderModel> folders});
}

/// @nodoc
class __$$TrackerStateResolvedImplCopyWithImpl<$Res>
    extends _$TrackerStateCopyWithImpl<$Res, _$TrackerStateResolvedImpl>
    implements _$$TrackerStateResolvedImplCopyWith<$Res> {
  __$$TrackerStateResolvedImplCopyWithImpl(_$TrackerStateResolvedImpl _value,
      $Res Function(_$TrackerStateResolvedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? periodStart = null,
    Object? periodEnd = null,
    Object? folders = null,
  }) {
    return _then(_$TrackerStateResolvedImpl(
      periodStart: null == periodStart
          ? _value.periodStart
          : periodStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      periodEnd: null == periodEnd
          ? _value.periodEnd
          : periodEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      folders: null == folders
          ? _value.folders
          : folders // ignore: cast_nullable_to_non_nullable
              as List<FolderModel>,
    ));
  }
}

/// @nodoc

class _$TrackerStateResolvedImpl extends _TrackerStateResolved {
  const _$TrackerStateResolvedImpl(
      {required this.periodStart,
      required this.periodEnd,
      required this.folders})
      : super._();

  @override
  final DateTime periodStart;
  @override
  final DateTime periodEnd;
  @override
  final List<FolderModel> folders;

  @override
  String toString() {
    return 'TrackerState.resolved(periodStart: $periodStart, periodEnd: $periodEnd, folders: $folders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackerStateResolvedImpl &&
            (identical(other.periodStart, periodStart) ||
                other.periodStart == periodStart) &&
            (identical(other.periodEnd, periodEnd) ||
                other.periodEnd == periodEnd) &&
            const DeepCollectionEquality().equals(other.folders, folders));
  }

  @override
  int get hashCode => Object.hash(runtimeType, periodStart, periodEnd,
      const DeepCollectionEquality().hash(folders));

  /// Create a copy of TrackerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackerStateResolvedImplCopyWith<_$TrackerStateResolvedImpl>
      get copyWith =>
          __$$TrackerStateResolvedImplCopyWithImpl<_$TrackerStateResolvedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime periodStart, DateTime periodEnd, List<FolderModel> folders)
        resolved,
    required TResult Function(DateTime periodStart, DateTime periodEnd) loading,
    required TResult Function(
            DateTime periodStart, DateTime periodEnd, MessagesModel? message)
        error,
  }) {
    return resolved(periodStart, periodEnd, folders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime periodStart, DateTime periodEnd,
            List<FolderModel> folders)?
        resolved,
    TResult? Function(DateTime periodStart, DateTime periodEnd)? loading,
    TResult? Function(
            DateTime periodStart, DateTime periodEnd, MessagesModel? message)?
        error,
  }) {
    return resolved?.call(periodStart, periodEnd, folders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime periodStart, DateTime periodEnd,
            List<FolderModel> folders)?
        resolved,
    TResult Function(DateTime periodStart, DateTime periodEnd)? loading,
    TResult Function(
            DateTime periodStart, DateTime periodEnd, MessagesModel? message)?
        error,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(periodStart, periodEnd, folders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrackerStateResolved value) resolved,
    required TResult Function(_TrackerStateLoading value) loading,
    required TResult Function(_TrackerStateError value) error,
  }) {
    return resolved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrackerStateResolved value)? resolved,
    TResult? Function(_TrackerStateLoading value)? loading,
    TResult? Function(_TrackerStateError value)? error,
  }) {
    return resolved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrackerStateResolved value)? resolved,
    TResult Function(_TrackerStateLoading value)? loading,
    TResult Function(_TrackerStateError value)? error,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(this);
    }
    return orElse();
  }
}

abstract class _TrackerStateResolved extends TrackerState {
  const factory _TrackerStateResolved(
      {required final DateTime periodStart,
      required final DateTime periodEnd,
      required final List<FolderModel> folders}) = _$TrackerStateResolvedImpl;
  const _TrackerStateResolved._() : super._();

  @override
  DateTime get periodStart;
  @override
  DateTime get periodEnd;
  List<FolderModel> get folders;

  /// Create a copy of TrackerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackerStateResolvedImplCopyWith<_$TrackerStateResolvedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TrackerStateLoadingImplCopyWith<$Res>
    implements $TrackerStateCopyWith<$Res> {
  factory _$$TrackerStateLoadingImplCopyWith(_$TrackerStateLoadingImpl value,
          $Res Function(_$TrackerStateLoadingImpl) then) =
      __$$TrackerStateLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime periodStart, DateTime periodEnd});
}

/// @nodoc
class __$$TrackerStateLoadingImplCopyWithImpl<$Res>
    extends _$TrackerStateCopyWithImpl<$Res, _$TrackerStateLoadingImpl>
    implements _$$TrackerStateLoadingImplCopyWith<$Res> {
  __$$TrackerStateLoadingImplCopyWithImpl(_$TrackerStateLoadingImpl _value,
      $Res Function(_$TrackerStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? periodStart = null,
    Object? periodEnd = null,
  }) {
    return _then(_$TrackerStateLoadingImpl(
      periodStart: null == periodStart
          ? _value.periodStart
          : periodStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      periodEnd: null == periodEnd
          ? _value.periodEnd
          : periodEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$TrackerStateLoadingImpl extends _TrackerStateLoading {
  const _$TrackerStateLoadingImpl(
      {required this.periodStart, required this.periodEnd})
      : super._();

  @override
  final DateTime periodStart;
  @override
  final DateTime periodEnd;

  @override
  String toString() {
    return 'TrackerState.loading(periodStart: $periodStart, periodEnd: $periodEnd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackerStateLoadingImpl &&
            (identical(other.periodStart, periodStart) ||
                other.periodStart == periodStart) &&
            (identical(other.periodEnd, periodEnd) ||
                other.periodEnd == periodEnd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, periodStart, periodEnd);

  /// Create a copy of TrackerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackerStateLoadingImplCopyWith<_$TrackerStateLoadingImpl> get copyWith =>
      __$$TrackerStateLoadingImplCopyWithImpl<_$TrackerStateLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime periodStart, DateTime periodEnd, List<FolderModel> folders)
        resolved,
    required TResult Function(DateTime periodStart, DateTime periodEnd) loading,
    required TResult Function(
            DateTime periodStart, DateTime periodEnd, MessagesModel? message)
        error,
  }) {
    return loading(periodStart, periodEnd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime periodStart, DateTime periodEnd,
            List<FolderModel> folders)?
        resolved,
    TResult? Function(DateTime periodStart, DateTime periodEnd)? loading,
    TResult? Function(
            DateTime periodStart, DateTime periodEnd, MessagesModel? message)?
        error,
  }) {
    return loading?.call(periodStart, periodEnd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime periodStart, DateTime periodEnd,
            List<FolderModel> folders)?
        resolved,
    TResult Function(DateTime periodStart, DateTime periodEnd)? loading,
    TResult Function(
            DateTime periodStart, DateTime periodEnd, MessagesModel? message)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(periodStart, periodEnd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrackerStateResolved value) resolved,
    required TResult Function(_TrackerStateLoading value) loading,
    required TResult Function(_TrackerStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrackerStateResolved value)? resolved,
    TResult? Function(_TrackerStateLoading value)? loading,
    TResult? Function(_TrackerStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrackerStateResolved value)? resolved,
    TResult Function(_TrackerStateLoading value)? loading,
    TResult Function(_TrackerStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _TrackerStateLoading extends TrackerState {
  const factory _TrackerStateLoading(
      {required final DateTime periodStart,
      required final DateTime periodEnd}) = _$TrackerStateLoadingImpl;
  const _TrackerStateLoading._() : super._();

  @override
  DateTime get periodStart;
  @override
  DateTime get periodEnd;

  /// Create a copy of TrackerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackerStateLoadingImplCopyWith<_$TrackerStateLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TrackerStateErrorImplCopyWith<$Res>
    implements $TrackerStateCopyWith<$Res> {
  factory _$$TrackerStateErrorImplCopyWith(_$TrackerStateErrorImpl value,
          $Res Function(_$TrackerStateErrorImpl) then) =
      __$$TrackerStateErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime periodStart, DateTime periodEnd, MessagesModel? message});

  $MessagesModelCopyWith<$Res>? get message;
}

/// @nodoc
class __$$TrackerStateErrorImplCopyWithImpl<$Res>
    extends _$TrackerStateCopyWithImpl<$Res, _$TrackerStateErrorImpl>
    implements _$$TrackerStateErrorImplCopyWith<$Res> {
  __$$TrackerStateErrorImplCopyWithImpl(_$TrackerStateErrorImpl _value,
      $Res Function(_$TrackerStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? periodStart = null,
    Object? periodEnd = null,
    Object? message = freezed,
  }) {
    return _then(_$TrackerStateErrorImpl(
      periodStart: null == periodStart
          ? _value.periodStart
          : periodStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      periodEnd: null == periodEnd
          ? _value.periodEnd
          : periodEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessagesModel?,
    ));
  }

  /// Create a copy of TrackerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessagesModelCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $MessagesModelCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$TrackerStateErrorImpl extends _TrackerStateError {
  const _$TrackerStateErrorImpl(
      {required this.periodStart, required this.periodEnd, this.message})
      : super._();

  @override
  final DateTime periodStart;
  @override
  final DateTime periodEnd;
  @override
  final MessagesModel? message;

  @override
  String toString() {
    return 'TrackerState.error(periodStart: $periodStart, periodEnd: $periodEnd, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackerStateErrorImpl &&
            (identical(other.periodStart, periodStart) ||
                other.periodStart == periodStart) &&
            (identical(other.periodEnd, periodEnd) ||
                other.periodEnd == periodEnd) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, periodStart, periodEnd, message);

  /// Create a copy of TrackerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackerStateErrorImplCopyWith<_$TrackerStateErrorImpl> get copyWith =>
      __$$TrackerStateErrorImplCopyWithImpl<_$TrackerStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime periodStart, DateTime periodEnd, List<FolderModel> folders)
        resolved,
    required TResult Function(DateTime periodStart, DateTime periodEnd) loading,
    required TResult Function(
            DateTime periodStart, DateTime periodEnd, MessagesModel? message)
        error,
  }) {
    return error(periodStart, periodEnd, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime periodStart, DateTime periodEnd,
            List<FolderModel> folders)?
        resolved,
    TResult? Function(DateTime periodStart, DateTime periodEnd)? loading,
    TResult? Function(
            DateTime periodStart, DateTime periodEnd, MessagesModel? message)?
        error,
  }) {
    return error?.call(periodStart, periodEnd, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime periodStart, DateTime periodEnd,
            List<FolderModel> folders)?
        resolved,
    TResult Function(DateTime periodStart, DateTime periodEnd)? loading,
    TResult Function(
            DateTime periodStart, DateTime periodEnd, MessagesModel? message)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(periodStart, periodEnd, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrackerStateResolved value) resolved,
    required TResult Function(_TrackerStateLoading value) loading,
    required TResult Function(_TrackerStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrackerStateResolved value)? resolved,
    TResult? Function(_TrackerStateLoading value)? loading,
    TResult? Function(_TrackerStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrackerStateResolved value)? resolved,
    TResult Function(_TrackerStateLoading value)? loading,
    TResult Function(_TrackerStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _TrackerStateError extends TrackerState {
  const factory _TrackerStateError(
      {required final DateTime periodStart,
      required final DateTime periodEnd,
      final MessagesModel? message}) = _$TrackerStateErrorImpl;
  const _TrackerStateError._() : super._();

  @override
  DateTime get periodStart;
  @override
  DateTime get periodEnd;
  MessagesModel? get message;

  /// Create a copy of TrackerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackerStateErrorImplCopyWith<_$TrackerStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FolderModel {
  String get name => throw _privateConstructorUsedError;
  int get folderId => throw _privateConstructorUsedError;
  List<TaskModel> get tasks => throw _privateConstructorUsedError;

  /// Create a copy of FolderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FolderModelCopyWith<FolderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FolderModelCopyWith<$Res> {
  factory $FolderModelCopyWith(
          FolderModel value, $Res Function(FolderModel) then) =
      _$FolderModelCopyWithImpl<$Res, FolderModel>;
  @useResult
  $Res call({String name, int folderId, List<TaskModel> tasks});
}

/// @nodoc
class _$FolderModelCopyWithImpl<$Res, $Val extends FolderModel>
    implements $FolderModelCopyWith<$Res> {
  _$FolderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FolderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? folderId = null,
    Object? tasks = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      folderId: null == folderId
          ? _value.folderId
          : folderId // ignore: cast_nullable_to_non_nullable
              as int,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FolderModelImplCopyWith<$Res>
    implements $FolderModelCopyWith<$Res> {
  factory _$$FolderModelImplCopyWith(
          _$FolderModelImpl value, $Res Function(_$FolderModelImpl) then) =
      __$$FolderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int folderId, List<TaskModel> tasks});
}

/// @nodoc
class __$$FolderModelImplCopyWithImpl<$Res>
    extends _$FolderModelCopyWithImpl<$Res, _$FolderModelImpl>
    implements _$$FolderModelImplCopyWith<$Res> {
  __$$FolderModelImplCopyWithImpl(
      _$FolderModelImpl _value, $Res Function(_$FolderModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FolderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? folderId = null,
    Object? tasks = null,
  }) {
    return _then(_$FolderModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      folderId: null == folderId
          ? _value.folderId
          : folderId // ignore: cast_nullable_to_non_nullable
              as int,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
    ));
  }
}

/// @nodoc

class _$FolderModelImpl implements _FolderModel {
  const _$FolderModelImpl(
      {this.name = 'Folder', required this.folderId, required this.tasks});

  @override
  @JsonKey()
  final String name;
  @override
  final int folderId;
  @override
  final List<TaskModel> tasks;

  @override
  String toString() {
    return 'FolderModel(name: $name, folderId: $folderId, tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FolderModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.folderId, folderId) ||
                other.folderId == folderId) &&
            const DeepCollectionEquality().equals(other.tasks, tasks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, folderId, const DeepCollectionEquality().hash(tasks));

  /// Create a copy of FolderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FolderModelImplCopyWith<_$FolderModelImpl> get copyWith =>
      __$$FolderModelImplCopyWithImpl<_$FolderModelImpl>(this, _$identity);
}

abstract class _FolderModel implements FolderModel {
  const factory _FolderModel(
      {final String name,
      required final int folderId,
      required final List<TaskModel> tasks}) = _$FolderModelImpl;

  @override
  String get name;
  @override
  int get folderId;
  @override
  List<TaskModel> get tasks;

  /// Create a copy of FolderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FolderModelImplCopyWith<_$FolderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
