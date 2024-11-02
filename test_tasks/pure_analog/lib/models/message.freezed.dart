// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PureMessageModel _$PureMessageModelFromJson(Map<String, dynamic> json) {
  return _PureMessageModel.fromJson(json);
}

/// @nodoc
mixin _$PureMessageModel {
  @JsonKey(name: 'timestamp')
  DateTime get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'text')
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_read')
  bool get isRead => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_my')
  bool get isMy => throw _privateConstructorUsedError;

  /// Serializes this PureMessageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PureMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PureMessageModelCopyWith<PureMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PureMessageModelCopyWith<$Res> {
  factory $PureMessageModelCopyWith(
          PureMessageModel value, $Res Function(PureMessageModel) then) =
      _$PureMessageModelCopyWithImpl<$Res, PureMessageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'timestamp') DateTime timestamp,
      @JsonKey(name: 'text') String text,
      @JsonKey(name: 'is_read') bool isRead,
      @JsonKey(name: 'is_my') bool isMy});
}

/// @nodoc
class _$PureMessageModelCopyWithImpl<$Res, $Val extends PureMessageModel>
    implements $PureMessageModelCopyWith<$Res> {
  _$PureMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PureMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? text = null,
    Object? isRead = null,
    Object? isMy = null,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      isMy: null == isMy
          ? _value.isMy
          : isMy // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PureMessageModelImplCopyWith<$Res>
    implements $PureMessageModelCopyWith<$Res> {
  factory _$$PureMessageModelImplCopyWith(_$PureMessageModelImpl value,
          $Res Function(_$PureMessageModelImpl) then) =
      __$$PureMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'timestamp') DateTime timestamp,
      @JsonKey(name: 'text') String text,
      @JsonKey(name: 'is_read') bool isRead,
      @JsonKey(name: 'is_my') bool isMy});
}

/// @nodoc
class __$$PureMessageModelImplCopyWithImpl<$Res>
    extends _$PureMessageModelCopyWithImpl<$Res, _$PureMessageModelImpl>
    implements _$$PureMessageModelImplCopyWith<$Res> {
  __$$PureMessageModelImplCopyWithImpl(_$PureMessageModelImpl _value,
      $Res Function(_$PureMessageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PureMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? text = null,
    Object? isRead = null,
    Object? isMy = null,
  }) {
    return _then(_$PureMessageModelImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      isMy: null == isMy
          ? _value.isMy
          : isMy // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PureMessageModelImpl implements _PureMessageModel {
  _$PureMessageModelImpl(
      {@JsonKey(name: 'timestamp') required this.timestamp,
      @JsonKey(name: 'text') required this.text,
      @JsonKey(name: 'is_read') required this.isRead,
      @JsonKey(name: 'is_my') required this.isMy});

  factory _$PureMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PureMessageModelImplFromJson(json);

  @override
  @JsonKey(name: 'timestamp')
  final DateTime timestamp;
  @override
  @JsonKey(name: 'text')
  final String text;
  @override
  @JsonKey(name: 'is_read')
  final bool isRead;
  @override
  @JsonKey(name: 'is_my')
  final bool isMy;

  @override
  String toString() {
    return 'PureMessageModel(timestamp: $timestamp, text: $text, isRead: $isRead, isMy: $isMy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PureMessageModelImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.isMy, isMy) || other.isMy == isMy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timestamp, text, isRead, isMy);

  /// Create a copy of PureMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PureMessageModelImplCopyWith<_$PureMessageModelImpl> get copyWith =>
      __$$PureMessageModelImplCopyWithImpl<_$PureMessageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PureMessageModelImplToJson(
      this,
    );
  }
}

abstract class _PureMessageModel implements PureMessageModel {
  factory _PureMessageModel(
          {@JsonKey(name: 'timestamp') required final DateTime timestamp,
          @JsonKey(name: 'text') required final String text,
          @JsonKey(name: 'is_read') required final bool isRead,
          @JsonKey(name: 'is_my') required final bool isMy}) =
      _$PureMessageModelImpl;

  factory _PureMessageModel.fromJson(Map<String, dynamic> json) =
      _$PureMessageModelImpl.fromJson;

  @override
  @JsonKey(name: 'timestamp')
  DateTime get timestamp;
  @override
  @JsonKey(name: 'text')
  String get text;
  @override
  @JsonKey(name: 'is_read')
  bool get isRead;
  @override
  @JsonKey(name: 'is_my')
  bool get isMy;

  /// Create a copy of PureMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PureMessageModelImplCopyWith<_$PureMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
