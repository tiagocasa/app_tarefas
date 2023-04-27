import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../stores/task_store.dart';
import '../models/task_board.dart';

enum TaskCardStatus {
  pending(Icons.access_time, 'Pendente'),
  completed(Icons.check, 'Concluída'),
  disabled(Icons.cancel_outlined, 'Desativada');

  final IconData icon;
  final String text;

  const TaskCardStatus(this.icon, this.text);
}

class TaskCard extends StatelessWidget {
  final TaskBoard board;

  const TaskCard({super.key, required this.board});

  // double getProgress(List<Task> tasks) {
  //   if (tasks.isEmpty) return 0;
  //   final completes = tasks.where((task) => task.isCompleted).length;

  //   return completes / tasks.length;
  // }
  final double progress = 0.5; //TODO: Como fazer essa porra?
  final String progressText = 'Pendente'; //TODO: Como fazer essa porra?

  // String getProgressText(List<Task> tasks) {
  //   final completes = tasks.where((task) => task.isCompleted).length;
  //   return '$completes / ${tasks.length}';
  // }

  TaskCardStatus getStatus(TaskBoard board, double progress) {
    if (!board.isActive) {
      return TaskCardStatus.disabled;
    } else if (progress < 1.0) {
      return TaskCardStatus.pending;
    } else {
      return TaskCardStatus.completed;
    }
  }

  Color getBackgroundColor(TaskCardStatus status, ThemeData theme) {
    switch (status) {
      case TaskCardStatus.pending:
        return theme.colorScheme.primaryContainer;
      case TaskCardStatus.completed:
        return theme.colorScheme.tertiaryContainer;
      case TaskCardStatus.disabled:
        return theme.colorScheme.errorContainer;
    }
  }

  Color getColor(TaskCardStatus status, ThemeData theme) {
    switch (status) {
      case TaskCardStatus.pending:
        return theme.colorScheme.primary;
      case TaskCardStatus.completed:
        return theme.colorScheme.tertiary;
      case TaskCardStatus.disabled:
        return theme.colorScheme.error;
    }
  }

  @override
  Widget build(BuildContext context) {
    final taskStore = Provider.of<TaskStore>(context);
    final theme = Theme.of(context);
    const progress = 0.5;
    const progressText = 'Pendente';
    final title = board.name;

    final status = getStatus(board, progress);
    final statusText = status.text;
    final iconData = status.icon;

    final backgroundColor = getBackgroundColor(status, theme);
    final color = getColor(status, theme);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: GestureDetector(
        onTap: () {
          taskStore.changeTask(board.id);
          Navigator.of(context).pushNamed('/edit');
        },
        child: Container(
          height: 130,
          decoration: BoxDecoration(
            color: backgroundColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    iconData,
                    color: theme.iconTheme.color?.withOpacity(0.4),
                  ),
                  const Spacer(),
                  Text(
                    statusText,
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.textTheme.bodySmall?.color?.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                title,
                style: theme.textTheme.titleMedium?.copyWith(),
              ),
              if (true)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: LinearProgressIndicator(
                        value: progress,
                        color: color.withOpacity(0.7),
                      ),
                    ),
                    Text(
                      progressText,
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w500,
                        color:
                            theme.textTheme.bodySmall?.color?.withOpacity(0.5),
                      ),
                    )
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
