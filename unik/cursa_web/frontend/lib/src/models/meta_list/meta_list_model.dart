import 'package:freezed_annotation/freezed_annotation.dart';

import '../meta/meta_model.dart';

part 'meta_list_model.freezed.dart';

@freezed
class MetaListModel with _$MetaListModel {
  const factory MetaListModel({
    required List<MetaListRate> list,
  }) = _MetaListModel;
}

@freezed
class MetaListRate with _$MetaListRate {
  const factory MetaListRate({
    required MetaModel meta,
    required String hero1,
    required String hero2,
  }) = _MetaListRate;
}
