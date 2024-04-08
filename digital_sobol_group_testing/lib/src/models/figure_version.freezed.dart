// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'figure_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FigureVersion {
  Figure get figure => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  bool get isLatest => throw _privateConstructorUsedError;
  bool get isInitial => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Figure figure, int index, bool isLatest, bool isInitial)
        $default, {
    required TResult Function(
            Figure figure, int index, bool isLatest, bool isInitial)
        base,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Figure figure, int index, bool isLatest, bool isInitial)?
        $default, {
    TResult? Function(Figure figure, int index, bool isLatest, bool isInitial)?
        base,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Figure figure, int index, bool isLatest, bool isInitial)?
        $default, {
    TResult Function(Figure figure, int index, bool isLatest, bool isInitial)?
        base,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FigureVersion value) $default, {
    required TResult Function(_BaseFigureVersion value) base,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FigureVersion value)? $default, {
    TResult? Function(_BaseFigureVersion value)? base,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FigureVersion value)? $default, {
    TResult Function(_BaseFigureVersion value)? base,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FigureVersionCopyWith<FigureVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FigureVersionCopyWith<$Res> {
  factory $FigureVersionCopyWith(
          FigureVersion value, $Res Function(FigureVersion) then) =
      _$FigureVersionCopyWithImpl<$Res, FigureVersion>;
  @useResult
  $Res call({Figure figure, int index, bool isLatest, bool isInitial});

  $FigureCopyWith<$Res> get figure;
}

/// @nodoc
class _$FigureVersionCopyWithImpl<$Res, $Val extends FigureVersion>
    implements $FigureVersionCopyWith<$Res> {
  _$FigureVersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? figure = null,
    Object? index = null,
    Object? isLatest = null,
    Object? isInitial = null,
  }) {
    return _then(_value.copyWith(
      figure: null == figure
          ? _value.figure
          : figure // ignore: cast_nullable_to_non_nullable
              as Figure,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isLatest: null == isLatest
          ? _value.isLatest
          : isLatest // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitial: null == isInitial
          ? _value.isInitial
          : isInitial // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FigureCopyWith<$Res> get figure {
    return $FigureCopyWith<$Res>(_value.figure, (value) {
      return _then(_value.copyWith(figure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FigureVersionImplCopyWith<$Res>
    implements $FigureVersionCopyWith<$Res> {
  factory _$$FigureVersionImplCopyWith(
          _$FigureVersionImpl value, $Res Function(_$FigureVersionImpl) then) =
      __$$FigureVersionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Figure figure, int index, bool isLatest, bool isInitial});

  @override
  $FigureCopyWith<$Res> get figure;
}

/// @nodoc
class __$$FigureVersionImplCopyWithImpl<$Res>
    extends _$FigureVersionCopyWithImpl<$Res, _$FigureVersionImpl>
    implements _$$FigureVersionImplCopyWith<$Res> {
  __$$FigureVersionImplCopyWithImpl(
      _$FigureVersionImpl _value, $Res Function(_$FigureVersionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? figure = null,
    Object? index = null,
    Object? isLatest = null,
    Object? isInitial = null,
  }) {
    return _then(_$FigureVersionImpl(
      figure: null == figure
          ? _value.figure
          : figure // ignore: cast_nullable_to_non_nullable
              as Figure,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isLatest: null == isLatest
          ? _value.isLatest
          : isLatest // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitial: null == isInitial
          ? _value.isInitial
          : isInitial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FigureVersionImpl implements _FigureVersion {
  const _$FigureVersionImpl(
      {required this.figure,
      required this.index,
      this.isLatest = false,
      this.isInitial = false})
      : assert(index >= 0, 'Figure version should not be less than 0');

  @override
  final Figure figure;
  @override
  final int index;
  @override
  @JsonKey()
  final bool isLatest;
  @override
  @JsonKey()
  final bool isInitial;

  @override
  String toString() {
    return 'FigureVersion(figure: $figure, index: $index, isLatest: $isLatest, isInitial: $isInitial)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FigureVersionImpl &&
            (identical(other.figure, figure) || other.figure == figure) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.isLatest, isLatest) ||
                other.isLatest == isLatest) &&
            (identical(other.isInitial, isInitial) ||
                other.isInitial == isInitial));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, figure, index, isLatest, isInitial);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FigureVersionImplCopyWith<_$FigureVersionImpl> get copyWith =>
      __$$FigureVersionImplCopyWithImpl<_$FigureVersionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Figure figure, int index, bool isLatest, bool isInitial)
        $default, {
    required TResult Function(
            Figure figure, int index, bool isLatest, bool isInitial)
        base,
  }) {
    return $default(figure, index, isLatest, isInitial);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Figure figure, int index, bool isLatest, bool isInitial)?
        $default, {
    TResult? Function(Figure figure, int index, bool isLatest, bool isInitial)?
        base,
  }) {
    return $default?.call(figure, index, isLatest, isInitial);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Figure figure, int index, bool isLatest, bool isInitial)?
        $default, {
    TResult Function(Figure figure, int index, bool isLatest, bool isInitial)?
        base,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(figure, index, isLatest, isInitial);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FigureVersion value) $default, {
    required TResult Function(_BaseFigureVersion value) base,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FigureVersion value)? $default, {
    TResult? Function(_BaseFigureVersion value)? base,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FigureVersion value)? $default, {
    TResult Function(_BaseFigureVersion value)? base,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _FigureVersion implements FigureVersion {
  const factory _FigureVersion(
      {required final Figure figure,
      required final int index,
      final bool isLatest,
      final bool isInitial}) = _$FigureVersionImpl;

  @override
  Figure get figure;
  @override
  int get index;
  @override
  bool get isLatest;
  @override
  bool get isInitial;
  @override
  @JsonKey(ignore: true)
  _$$FigureVersionImplCopyWith<_$FigureVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BaseFigureVersionImplCopyWith<$Res>
    implements $FigureVersionCopyWith<$Res> {
  factory _$$BaseFigureVersionImplCopyWith(_$BaseFigureVersionImpl value,
          $Res Function(_$BaseFigureVersionImpl) then) =
      __$$BaseFigureVersionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Figure figure, int index, bool isLatest, bool isInitial});

  @override
  $FigureCopyWith<$Res> get figure;
}

/// @nodoc
class __$$BaseFigureVersionImplCopyWithImpl<$Res>
    extends _$FigureVersionCopyWithImpl<$Res, _$BaseFigureVersionImpl>
    implements _$$BaseFigureVersionImplCopyWith<$Res> {
  __$$BaseFigureVersionImplCopyWithImpl(_$BaseFigureVersionImpl _value,
      $Res Function(_$BaseFigureVersionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? figure = null,
    Object? index = null,
    Object? isLatest = null,
    Object? isInitial = null,
  }) {
    return _then(_$BaseFigureVersionImpl(
      figure: null == figure
          ? _value.figure
          : figure // ignore: cast_nullable_to_non_nullable
              as Figure,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isLatest: null == isLatest
          ? _value.isLatest
          : isLatest // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitial: null == isInitial
          ? _value.isInitial
          : isInitial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BaseFigureVersionImpl implements _BaseFigureVersion {
  const _$BaseFigureVersionImpl(
      {this.figure = const Figure.empty(),
      this.index = 0,
      this.isLatest = true,
      this.isInitial = true});

  @override
  @JsonKey()
  final Figure figure;
  @override
  @JsonKey()
  final int index;
  @override
  @JsonKey()
  final bool isLatest;
  @override
  @JsonKey()
  final bool isInitial;

  @override
  String toString() {
    return 'FigureVersion.base(figure: $figure, index: $index, isLatest: $isLatest, isInitial: $isInitial)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseFigureVersionImpl &&
            (identical(other.figure, figure) || other.figure == figure) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.isLatest, isLatest) ||
                other.isLatest == isLatest) &&
            (identical(other.isInitial, isInitial) ||
                other.isInitial == isInitial));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, figure, index, isLatest, isInitial);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseFigureVersionImplCopyWith<_$BaseFigureVersionImpl> get copyWith =>
      __$$BaseFigureVersionImplCopyWithImpl<_$BaseFigureVersionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Figure figure, int index, bool isLatest, bool isInitial)
        $default, {
    required TResult Function(
            Figure figure, int index, bool isLatest, bool isInitial)
        base,
  }) {
    return base(figure, index, isLatest, isInitial);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Figure figure, int index, bool isLatest, bool isInitial)?
        $default, {
    TResult? Function(Figure figure, int index, bool isLatest, bool isInitial)?
        base,
  }) {
    return base?.call(figure, index, isLatest, isInitial);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Figure figure, int index, bool isLatest, bool isInitial)?
        $default, {
    TResult Function(Figure figure, int index, bool isLatest, bool isInitial)?
        base,
    required TResult orElse(),
  }) {
    if (base != null) {
      return base(figure, index, isLatest, isInitial);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FigureVersion value) $default, {
    required TResult Function(_BaseFigureVersion value) base,
  }) {
    return base(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FigureVersion value)? $default, {
    TResult? Function(_BaseFigureVersion value)? base,
  }) {
    return base?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FigureVersion value)? $default, {
    TResult Function(_BaseFigureVersion value)? base,
    required TResult orElse(),
  }) {
    if (base != null) {
      return base(this);
    }
    return orElse();
  }
}

abstract class _BaseFigureVersion implements FigureVersion {
  const factory _BaseFigureVersion(
      {final Figure figure,
      final int index,
      final bool isLatest,
      final bool isInitial}) = _$BaseFigureVersionImpl;

  @override
  Figure get figure;
  @override
  int get index;
  @override
  bool get isLatest;
  @override
  bool get isInitial;
  @override
  @JsonKey(ignore: true)
  _$$BaseFigureVersionImplCopyWith<_$BaseFigureVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
