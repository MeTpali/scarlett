// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'figure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Figure {
  List<Point<double>> get pointList => throw _privateConstructorUsedError;
  bool get isClosed => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Point<double>> pointList, bool isClosed) $default, {
    required TResult Function(List<Point<double>> pointList, bool isClosed)
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<Point<double>> pointList, bool isClosed)? $default, {
    TResult? Function(List<Point<double>> pointList, bool isClosed)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Point<double>> pointList, bool isClosed)? $default, {
    TResult Function(List<Point<double>> pointList, bool isClosed)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Figure value) $default, {
    required TResult Function(_EmptyFigure value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Figure value)? $default, {
    TResult? Function(_EmptyFigure value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Figure value)? $default, {
    TResult Function(_EmptyFigure value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FigureCopyWith<Figure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FigureCopyWith<$Res> {
  factory $FigureCopyWith(Figure value, $Res Function(Figure) then) =
      _$FigureCopyWithImpl<$Res, Figure>;
  @useResult
  $Res call({List<Point<double>> pointList, bool isClosed});
}

/// @nodoc
class _$FigureCopyWithImpl<$Res, $Val extends Figure>
    implements $FigureCopyWith<$Res> {
  _$FigureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pointList = null,
    Object? isClosed = null,
  }) {
    return _then(_value.copyWith(
      pointList: null == pointList
          ? _value.pointList
          : pointList // ignore: cast_nullable_to_non_nullable
              as List<Point<double>>,
      isClosed: null == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FigureImplCopyWith<$Res> implements $FigureCopyWith<$Res> {
  factory _$$FigureImplCopyWith(
          _$FigureImpl value, $Res Function(_$FigureImpl) then) =
      __$$FigureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Point<double>> pointList, bool isClosed});
}

/// @nodoc
class __$$FigureImplCopyWithImpl<$Res>
    extends _$FigureCopyWithImpl<$Res, _$FigureImpl>
    implements _$$FigureImplCopyWith<$Res> {
  __$$FigureImplCopyWithImpl(
      _$FigureImpl _value, $Res Function(_$FigureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pointList = null,
    Object? isClosed = null,
  }) {
    return _then(_$FigureImpl(
      pointList: null == pointList
          ? _value.pointList
          : pointList // ignore: cast_nullable_to_non_nullable
              as List<Point<double>>,
      isClosed: null == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FigureImpl implements _Figure {
  const _$FigureImpl({required this.pointList, this.isClosed = false})
      : assert(isClosed == false || pointList.length > 2,
            'Figure, that consists of less than 3 points can not be closed');

  @override
  final List<Point<double>> pointList;
  @override
  @JsonKey()
  final bool isClosed;

  @override
  String toString() {
    return 'Figure(pointList: $pointList, isClosed: $isClosed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FigureImpl &&
            const DeepCollectionEquality().equals(other.pointList, pointList) &&
            (identical(other.isClosed, isClosed) ||
                other.isClosed == isClosed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(pointList), isClosed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FigureImplCopyWith<_$FigureImpl> get copyWith =>
      __$$FigureImplCopyWithImpl<_$FigureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Point<double>> pointList, bool isClosed) $default, {
    required TResult Function(List<Point<double>> pointList, bool isClosed)
        empty,
  }) {
    return $default(pointList, isClosed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<Point<double>> pointList, bool isClosed)? $default, {
    TResult? Function(List<Point<double>> pointList, bool isClosed)? empty,
  }) {
    return $default?.call(pointList, isClosed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Point<double>> pointList, bool isClosed)? $default, {
    TResult Function(List<Point<double>> pointList, bool isClosed)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(pointList, isClosed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Figure value) $default, {
    required TResult Function(_EmptyFigure value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Figure value)? $default, {
    TResult? Function(_EmptyFigure value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Figure value)? $default, {
    TResult Function(_EmptyFigure value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Figure implements Figure {
  const factory _Figure(
      {required final List<Point<double>> pointList,
      final bool isClosed}) = _$FigureImpl;

  @override
  List<Point<double>> get pointList;
  @override
  bool get isClosed;
  @override
  @JsonKey(ignore: true)
  _$$FigureImplCopyWith<_$FigureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyFigureImplCopyWith<$Res>
    implements $FigureCopyWith<$Res> {
  factory _$$EmptyFigureImplCopyWith(
          _$EmptyFigureImpl value, $Res Function(_$EmptyFigureImpl) then) =
      __$$EmptyFigureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Point<double>> pointList, bool isClosed});
}

/// @nodoc
class __$$EmptyFigureImplCopyWithImpl<$Res>
    extends _$FigureCopyWithImpl<$Res, _$EmptyFigureImpl>
    implements _$$EmptyFigureImplCopyWith<$Res> {
  __$$EmptyFigureImplCopyWithImpl(
      _$EmptyFigureImpl _value, $Res Function(_$EmptyFigureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pointList = null,
    Object? isClosed = null,
  }) {
    return _then(_$EmptyFigureImpl(
      pointList: null == pointList
          ? _value.pointList
          : pointList // ignore: cast_nullable_to_non_nullable
              as List<Point<double>>,
      isClosed: null == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EmptyFigureImpl implements _EmptyFigure {
  const _$EmptyFigureImpl({this.pointList = const [], this.isClosed = false});

  @override
  @JsonKey()
  final List<Point<double>> pointList;
  @override
  @JsonKey()
  final bool isClosed;

  @override
  String toString() {
    return 'Figure.empty(pointList: $pointList, isClosed: $isClosed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyFigureImpl &&
            const DeepCollectionEquality().equals(other.pointList, pointList) &&
            (identical(other.isClosed, isClosed) ||
                other.isClosed == isClosed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(pointList), isClosed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyFigureImplCopyWith<_$EmptyFigureImpl> get copyWith =>
      __$$EmptyFigureImplCopyWithImpl<_$EmptyFigureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Point<double>> pointList, bool isClosed) $default, {
    required TResult Function(List<Point<double>> pointList, bool isClosed)
        empty,
  }) {
    return empty(pointList, isClosed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<Point<double>> pointList, bool isClosed)? $default, {
    TResult? Function(List<Point<double>> pointList, bool isClosed)? empty,
  }) {
    return empty?.call(pointList, isClosed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Point<double>> pointList, bool isClosed)? $default, {
    TResult Function(List<Point<double>> pointList, bool isClosed)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(pointList, isClosed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Figure value) $default, {
    required TResult Function(_EmptyFigure value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Figure value)? $default, {
    TResult? Function(_EmptyFigure value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Figure value)? $default, {
    TResult Function(_EmptyFigure value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _EmptyFigure implements Figure {
  const factory _EmptyFigure(
      {final List<Point<double>> pointList,
      final bool isClosed}) = _$EmptyFigureImpl;

  @override
  List<Point<double>> get pointList;
  @override
  bool get isClosed;
  @override
  @JsonKey(ignore: true)
  _$$EmptyFigureImplCopyWith<_$EmptyFigureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
