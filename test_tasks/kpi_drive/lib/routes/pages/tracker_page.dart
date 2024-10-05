import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kpi_drive/di/kpi_di.dart';
import 'package:kpi_drive/features/tracker/board.dart';
import 'package:kpi_drive/theme/kpi_theme.dart';
import 'package:kpi_drive/utils/utils.dart';

import '../../features/settings/button.dart';
import '../router.dart';

@RoutePage()
class TrackerPage extends ConsumerWidget {
  const TrackerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trackerNotifier = ref.watch(KpiDi.boardProvider.notifier);
    final board = ref.watch(KpiDi.boardProvider);
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundColor: KpiTheme.of(context).appBarTheme.backgroundColor,
          child: Image.asset(
            'assets/profile_placeholder.png',
            height: 45,
            width: 45,
          ),
        ),
        actions: [
          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () async {
                      await _showStartDatePickerDialog(context, ref);
                    },
                    child: Text(
                      DateTimeUtils.periodToForwardString(board.periodStart),
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3),
                      child: Divider(),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await _showEndDatePickerDialog(context, ref);
                    },
                    child: Text(
                      DateTimeUtils.periodToForwardString(board.periodEnd),
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 15),
              SettingsButton(
                onTap: () async {
                  await context.router.push(const SettingsRoute());
                },
              ),
            ],
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await trackerNotifier.fetchTasks();
        },
        child: Board(),
      ),
    );
  }

  Future<void> _showStartDatePickerDialog(
      BuildContext context, WidgetRef ref) async {
    final trackerNotifier = ref.watch(KpiDi.boardProvider.notifier);
    final board = ref.watch(KpiDi.boardProvider);
    final periodStart = await showDatePicker(
      context: context,
      initialDate: board.periodStart,
      firstDate: DateTime.now().add(Duration(days: -365)),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );

    if (periodStart != null) {
      trackerNotifier.updatePeriodStart(periodStart);
    }
  }

  Future<void> _showEndDatePickerDialog(
      BuildContext context, WidgetRef ref) async {
    final trackerNotifier = ref.watch(KpiDi.boardProvider.notifier);
    final board = ref.watch(KpiDi.boardProvider);

    final periodEnd = await showDatePicker(
      context: context,
      initialDate: board.periodEnd,
      firstDate: DateTime.now().add(Duration(days: -365)),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );

    if (periodEnd != null) {
      trackerNotifier.updatePeriodEnd(periodEnd);
    }
  }
}
