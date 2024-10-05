import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'indicator_to_mo_id') required int id,
    @JsonKey(name: 'parent_id') required int folderId,
    @JsonKey(name: 'order') required int order,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}
