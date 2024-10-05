import 'package:freezed_annotation/freezed_annotation.dart';

import '../messages/messages_model.dart';
import '../task/task_model.dart';

part 'tracker_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class TrackerState with _$TrackerState {
  const TrackerState._();

  const factory TrackerState.resolved({
    required DateTime periodStart,
    required DateTime periodEnd,
    required List<FolderModel> folders,
  }) = _TrackerStateResolved;

  const factory TrackerState.loading({
    required DateTime periodStart,
    required DateTime periodEnd,
  }) = _TrackerStateLoading;

  const factory TrackerState.error({
    required DateTime periodStart,
    required DateTime periodEnd,
    MessagesModel? message,
  }) = _TrackerStateError;
}

@Freezed(makeCollectionsUnmodifiable: false)
class FolderModel with _$FolderModel {
  const factory FolderModel({
    @Default('Folder') String name,
    required int folderId,
    required List<TaskModel> tasks,
  }) = _FolderModel;
}
