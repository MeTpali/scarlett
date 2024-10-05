import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kpi_drive/utils/utils.dart';

import '../../theme/constants.dart';
import '../../theme/kpi_theme.dart';

class TaskCard extends StatelessWidget {
  final String name;
  final DateTime? deadline;
  final int? extraFiles;
  final int? messages;
  final int? doneTasks;
  final int? totalTasks;
  const TaskCard({
    super.key,
    required this.name,
    this.deadline,
    this.extraFiles,
    this.messages,
    this.doneTasks,
    this.totalTasks,
  });

  TaskCard.placeholder({
    super.key,
    required this.name,
    this.extraFiles = 2,
    this.messages = 5,
    this.totalTasks = 7,
  })  : deadline = DateTime.now(),
        doneTasks = Random().nextInt(8);

  @override
  Widget build(BuildContext context) {
    final footerColor = KpiTheme.of(context).colorScheme.onPrimaryContainer;
    return Card(
      margin: EdgeInsets.all(7),
      color: KpiTheme.of(context).colorScheme.primaryContainer,
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 24, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            if (deadline != null) ...[
              Row(
                children: [
                  Icon(
                    (Icons.access_time),
                    color: footerColor,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '${DateTimeUtils.monthString(deadline!.month)} ${deadline?.day}',
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
            Row(
              children: [
                if (extraFiles != null) ...[
                  Icon(
                    (Icons.attach_file),
                    color: footerColor,
                  ),
                  Text(extraFiles.toString()),
                  const SizedBox(width: 5),
                ],
                if (messages != null) ...[
                  Icon(
                    (Icons.messenger_outline_rounded),
                    color: footerColor,
                  ),
                  Text(messages.toString()),
                  const SizedBox(width: 5),
                ],
                if (doneTasks != null && totalTasks != null) ...[
                  if (doneTasks == totalTasks)
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: ShapeDecoration(
                        color: KpiColors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(3),
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            (Icons.check_box_outlined),
                            color: footerColor,
                          ),
                          Text('$doneTasks/$totalTasks'),
                        ],
                      ),
                    ),
                  if (doneTasks != totalTasks) ...[
                    Icon(
                      (Icons.check_box_outlined),
                      color: footerColor,
                    ),
                    Text('$doneTasks/$totalTasks'),
                  ],
                ],
              ],
            )
          ],
        ),
      ),
    );
  }
}
