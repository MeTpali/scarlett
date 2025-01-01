// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'meta_model.dart';

part 'meta.freezed.dart';
part 'meta.g.dart';

@freezed
class Meta with _$Meta {
  const factory Meta({
    @JsonKey(name: 'meta') required List<MetaModel> meta,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
