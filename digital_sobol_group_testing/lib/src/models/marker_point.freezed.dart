// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marker_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Marker {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double x, double y) point,
    required TResult Function() idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double x, double y)? point,
    TResult? Function()? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double x, double y)? point,
    TResult Function()? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MarkerPoint value) point,
    required TResult Function(_MarkerIdle value) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MarkerPoint value)? point,
    TResult? Function(_MarkerIdle value)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MarkerPoint value)? point,
    TResult Function(_MarkerIdle value)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkerCopyWith<$Res> {
  factory $MarkerCopyWith(Marker value, $Res Function(Marker) then) =
      _$MarkerCopyWithImpl<$Res, Marker>;
}

/// @nodoc
class _$MarkerCopyWithImpl<$Res, $Val extends Marker>
    implements $MarkerCopyWith<$Res> {
  _$MarkerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MarkerPointImplCopyWith<$Res> {
  factory _$$MarkerPointImplCopyWith(
          _$MarkerPointImpl value, $Res Function(_$MarkerPointImpl) then) =
      __$$MarkerPointImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double x, double y});
}

/// @nodoc
class __$$MarkerPointImplCopyWithImpl<$Res>
    extends _$MarkerCopyWithImpl<$Res, _$MarkerPointImpl>
    implements _$$MarkerPointImplCopyWith<$Res> {
  __$$MarkerPointImplCopyWithImpl(
      _$MarkerPointImpl _value, $Res Function(_$MarkerPointImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$MarkerPointImpl(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$MarkerPointImpl implements _MarkerPoint {
  const _$MarkerPointImpl({required this.x, required this.y});

  @override
  final double x;
  @override
  final double y;

  @override
  String toString() {
    return 'Marker.point(x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkerPointImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkerPointImplCopyWith<_$MarkerPointImpl> get copyWith =>
      __$$MarkerPointImplCopyWithImpl<_$MarkerPointImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double x, double y) point,
    required TResult Function() idle,
  }) {
    return point(x, y);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double x, double y)? point,
    TResult? Function()? idle,
  }) {
    return point?.call(x, y);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double x, double y)? point,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (point != null) {
      return point(x, y);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MarkerPoint value) point,
    required TResult Function(_MarkerIdle value) idle,
  }) {
    return point(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MarkerPoint value)? point,
    TResult? Function(_MarkerIdle value)? idle,
  }) {
    return point?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MarkerPoint value)? point,
    TResult Function(_MarkerIdle value)? idle,
    required TResult orElse(),
  }) {
    if (point != null) {
      return point(this);
    }
    return orElse();
  }
}

abstract class _MarkerPoint implements Marker {
  const factory _MarkerPoint(
      {required final double x, required final double y}) = _$MarkerPointImpl;

  double get x;
  double get y;
  @JsonKey(ignore: true)
  _$$MarkerPointImplCopyWith<_$MarkerPointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkerIdleImplCopyWith<$Res> {
  factory _$$MarkerIdleImplCopyWith(
          _$MarkerIdleImpl value, $Res Function(_$MarkerIdleImpl) then) =
      __$$MarkerIdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MarkerIdleImplCopyWithImpl<$Res>
    extends _$MarkerCopyWithImpl<$Res, _$MarkerIdleImpl>
    implements _$$MarkerIdleImplCopyWith<$Res> {
  __$$MarkerIdleImplCopyWithImpl(
      _$MarkerIdleImpl _value, $Res Function(_$MarkerIdleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MarkerIdleImpl implements _MarkerIdle {
  const _$MarkerIdleImpl();

  @override
  String toString() {
    return 'Marker.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MarkerIdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double x, double y) point,
    required TResult Function() idle,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double x, double y)? point,
    TResult? Function()? idle,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double x, double y)? point,
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
    required TResult Function(_MarkerPoint value) point,
    required TResult Function(_MarkerIdle value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MarkerPoint value)? point,
    TResult? Function(_MarkerIdle value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MarkerPoint value)? point,
    TResult Function(_MarkerIdle value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _MarkerIdle implements Marker {
  const factory _MarkerIdle() = _$MarkerIdleImpl;
}
