import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_meta_model.freezed.dart';

@freezed
class AddMetaModel with _$AddMetaModel {
  const factory AddMetaModel({
    @Default('') String name,
    @Default('') String icon,
  }) = _AddMetaModel;
}
