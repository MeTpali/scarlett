// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'incognito_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IncognitoState {
  int get left => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int left) active,
    required TResult Function(int left) inactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int left)? active,
    TResult? Function(int left)? inactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int left)? active,
    TResult Function(int left)? inactive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncognitoActiveState value) active,
    required TResult Function(_IncognitoInactiveState value) inactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncognitoActiveState value)? active,
    TResult? Function(_IncognitoInactiveState value)? inactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncognitoActiveState value)? active,
    TResult Function(_IncognitoInactiveState value)? inactive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of IncognitoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IncognitoStateCopyWith<IncognitoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncognitoStateCopyWith<$Res> {
  factory $IncognitoStateCopyWith(
          IncognitoState value, $Res Function(IncognitoState) then) =
      _$IncognitoStateCopyWithImpl<$Res, IncognitoState>;
  @useResult
  $Res call({int left});
}

/// @nodoc
class _$IncognitoStateCopyWithImpl<$Res, $Val extends IncognitoState>
    implements $IncognitoStateCopyWith<$Res> {
  _$IncognitoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IncognitoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = null,
  }) {
    return _then(_value.copyWith(
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IncognitoActiveStateImplCopyWith<$Res>
    implements $IncognitoStateCopyWith<$Res> {
  factory _$$IncognitoActiveStateImplCopyWith(_$IncognitoActiveStateImpl value,
          $Res Function(_$IncognitoActiveStateImpl) then) =
      __$$IncognitoActiveStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int left});
}

/// @nodoc
class __$$IncognitoActiveStateImplCopyWithImpl<$Res>
    extends _$IncognitoStateCopyWithImpl<$Res, _$IncognitoActiveStateImpl>
    implements _$$IncognitoActiveStateImplCopyWith<$Res> {
  __$$IncognitoActiveStateImplCopyWithImpl(_$IncognitoActiveStateImpl _value,
      $Res Function(_$IncognitoActiveStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of IncognitoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = null,
  }) {
    return _then(_$IncognitoActiveStateImpl(
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IncognitoActiveStateImpl implements _IncognitoActiveState {
  const _$IncognitoActiveStateImpl({required this.left});

  @override
  final int left;

  @override
  String toString() {
    return 'IncognitoState.active(left: $left)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncognitoActiveStateImpl &&
            (identical(other.left, left) || other.left == left));
  }

  @override
  int get hashCode => Object.hash(runtimeType, left);

  /// Create a copy of IncognitoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncognitoActiveStateImplCopyWith<_$IncognitoActiveStateImpl>
      get copyWith =>
          __$$IncognitoActiveStateImplCopyWithImpl<_$IncognitoActiveStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int left) active,
    required TResult Function(int left) inactive,
  }) {
    return active(left);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int left)? active,
    TResult? Function(int left)? inactive,
  }) {
    return active?.call(left);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int left)? active,
    TResult Function(int left)? inactive,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active(left);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncognitoActiveState value) active,
    required TResult Function(_IncognitoInactiveState value) inactive,
  }) {
    return active(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncognitoActiveState value)? active,
    TResult? Function(_IncognitoInactiveState value)? inactive,
  }) {
    return active?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncognitoActiveState value)? active,
    TResult Function(_IncognitoInactiveState value)? inactive,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active(this);
    }
    return orElse();
  }
}

abstract class _IncognitoActiveState implements IncognitoState {
  const factory _IncognitoActiveState({required final int left}) =
      _$IncognitoActiveStateImpl;

  @override
  int get left;

  /// Create a copy of IncognitoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncognitoActiveStateImplCopyWith<_$IncognitoActiveStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IncognitoInactiveStateImplCopyWith<$Res>
    implements $IncognitoStateCopyWith<$Res> {
  factory _$$IncognitoInactiveStateImplCopyWith(
          _$IncognitoInactiveStateImpl value,
          $Res Function(_$IncognitoInactiveStateImpl) then) =
      __$$IncognitoInactiveStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int left});
}

/// @nodoc
class __$$IncognitoInactiveStateImplCopyWithImpl<$Res>
    extends _$IncognitoStateCopyWithImpl<$Res, _$IncognitoInactiveStateImpl>
    implements _$$IncognitoInactiveStateImplCopyWith<$Res> {
  __$$IncognitoInactiveStateImplCopyWithImpl(
      _$IncognitoInactiveStateImpl _value,
      $Res Function(_$IncognitoInactiveStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of IncognitoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = null,
  }) {
    return _then(_$IncognitoInactiveStateImpl(
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IncognitoInactiveStateImpl implements _IncognitoInactiveState {
  const _$IncognitoInactiveStateImpl({required this.left});

  @override
  final int left;

  @override
  String toString() {
    return 'IncognitoState.inactive(left: $left)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncognitoInactiveStateImpl &&
            (identical(other.left, left) || other.left == left));
  }

  @override
  int get hashCode => Object.hash(runtimeType, left);

  /// Create a copy of IncognitoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncognitoInactiveStateImplCopyWith<_$IncognitoInactiveStateImpl>
      get copyWith => __$$IncognitoInactiveStateImplCopyWithImpl<
          _$IncognitoInactiveStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int left) active,
    required TResult Function(int left) inactive,
  }) {
    return inactive(left);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int left)? active,
    TResult? Function(int left)? inactive,
  }) {
    return inactive?.call(left);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int left)? active,
    TResult Function(int left)? inactive,
    required TResult orElse(),
  }) {
    if (inactive != null) {
      return inactive(left);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncognitoActiveState value) active,
    required TResult Function(_IncognitoInactiveState value) inactive,
  }) {
    return inactive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncognitoActiveState value)? active,
    TResult? Function(_IncognitoInactiveState value)? inactive,
  }) {
    return inactive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncognitoActiveState value)? active,
    TResult Function(_IncognitoInactiveState value)? inactive,
    required TResult orElse(),
  }) {
    if (inactive != null) {
      return inactive(this);
    }
    return orElse();
  }
}

abstract class _IncognitoInactiveState implements IncognitoState {
  const factory _IncognitoInactiveState({required final int left}) =
      _$IncognitoInactiveStateImpl;

  @override
  int get left;

  /// Create a copy of IncognitoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncognitoInactiveStateImplCopyWith<_$IncognitoInactiveStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
