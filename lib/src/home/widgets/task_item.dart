import 'package:flutter/material.dart';

import '../models/task.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    super.key,
    required this.task,
  });
  final Task task;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = theme.colorScheme.primary;
    final backgroundColor = theme.colorScheme.primaryContainer;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: backgroundColor.withOpacity(0.3),
          borderRadius: BorderRadius.circular(5),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Checkbox(
              activeColor: color,
              value: false,
              onChanged: null,
            ),
            const SizedBox(width: 10),
            Text(
              task.taskName,
              style: theme.textTheme.bodySmall?.copyWith(),
            ),
            const Spacer(),
            Icon(
              Icons.cancel,
              color: color.withOpacity(0.5),
            ),
          ],
        ),
      ),
    );
  }
}
