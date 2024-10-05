import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kpi_drive/services/board_service.dart';

import '../../models/data/data_model.dart';
import '../../models/task/task_model.dart';
import '../../models/tracker_state/tracker_state.dart';

class TrackerNotifier extends StateNotifier<TrackerState> {
  final BoardService _boardService;
  TrackerNotifier({
    required BoardService boardService,
  })  : _boardService = boardService,
        super(
          TrackerState.resolved(
            periodEnd: DateTime.now(),
            periodStart: DateTime.now().add(
              const Duration(days: -180),
            ),
            folders: [],
          ),
        );

  Future<void> init() => fetchTasks();

  Future<void> fetchTasks() async {
    state = TrackerState.loading(
      periodStart: state.periodStart,
      periodEnd: state.periodEnd,
    );

    final response = await _boardService.fetchTasks(
      periodStart: state.periodStart,
      periodEnd: state.periodEnd,
    );

    response.whenOrNull(
      success: (message, data, status) {
        if (data == null) {
          final newState = TrackerState.error(
            periodStart: state.periodStart,
            periodEnd: state.periodEnd,
            message: message,
          );
          state = newState;
          return;
        }
        final newState = TrackerState.resolved(
          periodStart: state.periodStart,
          periodEnd: state.periodEnd,
          folders: foldersFromData(DataModel.fromJson(data)),
        );
        state = newState;
      },
      error: (message, status) {
        final newState = TrackerState.error(
          periodStart: state.periodStart,
          periodEnd: state.periodEnd,
          message: message,
        );
        state = newState;
      },
    );
  }

  Future<void> dragAndDrop(
    int oldItemIndex,
    int oldListIndex,
    int newItemIndex,
    int newListIndex,
  ) async {
    if (oldListIndex == newListIndex && oldItemIndex == newItemIndex) {
      return;
    }

    state.mapOrNull(
      resolved: (tracker) {
        _boardService.dragAndDrop(
          periodStart: tracker.periodStart,
          periodEnd: tracker.periodEnd,
          taskId: tracker.folders[oldListIndex].tasks[oldItemIndex].id,
          parentId: tracker.folders[newListIndex].folderId,
          order: newItemIndex + 1,
        );
        final newFolders =
            List<FolderModel>.from(tracker.folders, growable: true);
        final task = newFolders[oldListIndex]
            .tasks
            .removeAt(oldItemIndex)
            .copyWith(order: newItemIndex + 1);
        newFolders[newListIndex].tasks.add(task);
        newFolders[newListIndex]
            .tasks
            .sort((a, b) => a.order.compareTo(b.order));
        state = tracker.copyWith(folders: newFolders);
      },
    );
  }

  List<FolderModel> foldersFromData(DataModel data) {
    final foldersMap = <int, List<TaskModel>>{};
    for (final task in data.rows) {
      var tasks = foldersMap[task.folderId] ?? <TaskModel>[];
      tasks.add(task);
      foldersMap[task.folderId] = tasks;
    }

    final folders = <FolderModel>[];
    for (final taskList in foldersMap.values) {
      taskList.sort((a, b) => a.order.compareTo(b.order));
      final folder =
          FolderModel(folderId: taskList.first.folderId, tasks: taskList);
      folders.add(folder);
    }

    return folders;
  }

  void updatePeriodStart(DateTime periodStart) {
    final newState = state.copyWith(periodStart: periodStart);
    state = newState;
    fetchTasks();
  }

  void updatePeriodEnd(DateTime periodEnd) {
    final newState = state.copyWith(periodStart: periodEnd);
    state = newState;
    fetchTasks();
  }
}
