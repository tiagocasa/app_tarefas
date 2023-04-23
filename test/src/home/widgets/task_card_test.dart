import 'package:flutter_test/flutter_test.dart';
import 'package:realm/realm.dart';
import 'package:tarefas/src/home/widgets/task_card.dart';
import 'package:tarefas/src/shared/services/realm/models/task_model.dart';

void main() {
  final board = TaskBoard(Uuid.v4(), 'Nova Lista');
  test('task card ...', () {
    final tasks = [
      Task(Uuid.v4(), '', isCompleted: true),
      Task(Uuid.v4(), '', isCompleted: true),
      Task(Uuid.v4(), ''),
      Task(Uuid.v4(), ''),
    ];

    final progress = TaskCard(board: board).getProgress(tasks);

    expect(progress, 0.5);
  });
}
