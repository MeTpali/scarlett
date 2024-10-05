import 'package:freezed_annotation/freezed_annotation.dart';

import '../task/task_model.dart';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

@freezed
class DataModel with _$DataModel {
  const factory DataModel({
    @JsonKey(name: 'page') required int page,
    @JsonKey(name: 'pages_count') required int pagesCount,
    @JsonKey(name: 'rows_count') required int rowsCount,
    @JsonKey(name: 'rows') required List<TaskModel> rows,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}
