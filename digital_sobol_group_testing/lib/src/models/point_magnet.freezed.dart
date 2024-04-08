// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'point_magnet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PointMagnet {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double gridStep) magnetize,
    required TResult Function() demagnetize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double gridStep)? magnetize,
    TResult? Function()? demagnetize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double gridStep)? magnetize,
    TResult Function()? demagnetize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Magnetize value) magnetize,
    required TResult Function(_Demagnetize value) demagnetize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Magnetize value)? magnetize,
    TResult? Function(_Demagnetize value)? demagnetize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Magnetize value)? magnetize,
    TResult Function(_Demagnetize value)? demagnetize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointMagnetCopyWith<$Res> {
  factory $PointMagnetCopyWith(
          PointMagnet value, $Res Function(PointMagnet) then) =
      _$PointMagnetCopyWithImpl<$Res, PointMagnet>;
}

/// @nodoc
class _$PointMagnetCopyWithImpl<$Res, $Val extends PointMagnet>
    implements $PointMagnetCopyWith<$Res> {
  _$PointMagnetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MagnetizeImplCopyWith<$Res> {
  factory _$$MagnetizeImplCopyWith(
          _$MagnetizeImpl value, $Res Function(_$MagnetizeImpl) then) =
      __$$MagnetizeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double gridStep});
}

/// @nodoc
class __$$MagnetizeImplCopyWithImpl<$Res>
    extends _$PointMagnetCopyWithImpl<$Res, _$MagnetizeImpl>
    implements _$$MagnetizeImplCopyWith<$Res> {
  __$$MagnetizeImplCopyWithImpl(
      _$MagnetizeImpl _value, $Res Function(_$MagnetizeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gridStep = null,
  }) {
    return _then(_$MagnetizeImpl(
      gridStep: null == gridStep
          ? _value.gridStep
          : gridStep // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$MagnetizeImpl implements _Magnetize {
  const _$MagnetizeImpl({required this.gridStep});

  @override
  final double gridStep;

  @override
  String toString() {
    return 'PointMagnet.magnetize(gridStep: $gridStep)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MagnetizeImpl &&
            (identical(other.gridStep, gridStep) ||
                other.gridStep == gridStep));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gridStep);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MagnetizeImplCopyWith<_$MagnetizeImpl> get copyWith =>
      __$$MagnetizeImplCopyWithImpl<_$MagnetizeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double gridStep) magnetize,
    required TResult Function() demagnetize,
  }) {
    return magnetize(gridStep);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double gridStep)? magnetize,
    TResult? Function()? demagnetize,
  }) {
    return magnetize?.call(gridStep);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double gridStep)? magnetize,
    TResult Function()? demagnetize,
    required TResult orElse(),
  }) {
    if (magnetize != null) {
      return magnetize(gridStep);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Magnetize value) magnetize,
    required TResult Function(_Demagnetize value) demagnetize,
  }) {
    return magnetize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Magnetize value)? magnetize,
    TResult? Function(_Demagnetize value)? demagnetize,
  }) {
    return magnetize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Magnetize value)? magnetize,
    TResult Function(_Demagnetize value)? demagnetize,
    required TResult orElse(),
  }) {
    if (magnetize != null) {
      return magnetize(this);
    }
    return orElse();
  }
}

abstract class _Magnetize implements PointMagnet {
  const factory _Magnetize({required final double gridStep}) = _$MagnetizeImpl;

  double get gridStep;
  @JsonKey(ignore: true)
  _$$MagnetizeImplCopyWith<_$MagnetizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DemagnetizeImplCopyWith<$Res> {
  factory _$$DemagnetizeImplCopyWith(
          _$DemagnetizeImpl value, $Res Function(_$DemagnetizeImpl) then) =
      __$$DemagnetizeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DemagnetizeImplCopyWithImpl<$Res>
    extends _$PointMagnetCopyWithImpl<$Res, _$DemagnetizeImpl>
    implements _$$DemagnetizeImplCopyWith<$Res> {
  __$$DemagnetizeImplCopyWithImpl(
      _$DemagnetizeImpl _value, $Res Function(_$DemagnetizeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DemagnetizeImpl implements _Demagnetize {
  const _$DemagnetizeImpl();

  @override
  String toString() {
    return 'PointMagnet.demagnetize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DemagnetizeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double gridStep) magnetize,
    required TResult Function() demagnetize,
  }) {
    return demagnetize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double gridStep)? magnetize,
    TResult? Function()? demagnetize,
  }) {
    return demagnetize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double gridStep)? magnetize,
    TResult Function()? demagnetize,
    required TResult orElse(),
  }) {
    if (demagnetize != null) {
      return demagnetize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Magnetize value) magnetize,
    required TResult Function(_Demagnetize value) demagnetize,
  }) {
    return demagnetize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Magnetize value)? magnetize,
    TResult? Function(_Demagnetize value)? demagnetize,
  }) {
    return demagnetize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Magnetize value)? magnetize,
    TResult Function(_Demagnetize value)? demagnetize,
    required TResult orElse(),
  }) {
    if (demagnetize != null) {
      return demagnetize(this);
    }
    return orElse();
  }
}

abstract class _Demagnetize implements PointMagnet {
  const factory _Demagnetize() = _$DemagnetizeImpl;
}
