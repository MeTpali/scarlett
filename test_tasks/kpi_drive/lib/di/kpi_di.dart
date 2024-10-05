import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kpi_drive/di/di.dart';
import 'package:kpi_drive/features/tracker/tracker_notifier.dart';
import 'package:kpi_drive/models/tracker_state/tracker_state.dart';

import '../services/board_service.dart';

abstract class KpiDi {
  static final boardProvider =
      StateNotifierProvider.autoDispose<TrackerNotifier, TrackerState>(
    (ref) => TrackerNotifier(
      boardService: getIt.get<BoardService>(),
    )..init(),
  );
}
