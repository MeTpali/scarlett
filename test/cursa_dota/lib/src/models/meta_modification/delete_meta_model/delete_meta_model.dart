import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_meta_model.freezed.dart';

@freezed
class DeleteMetaModel with _$DeleteMetaModel {
  const factory DeleteMetaModel({
    @Default(0) int id,
  }) = _DeleteMetaModel;
}
