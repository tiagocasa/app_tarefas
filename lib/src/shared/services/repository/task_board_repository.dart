// import 'package:tarefas/src/shared/services/repository/task_item_repository.dart';

// import '../../../core/home/models/task_board_model.dart';
// import '../database_provider.dart';

// class TaskBoardRepository {
//   Future<List<TaskBoard>> getTasks() async {
//     final db = await DatabaseHelper.instance.database;
//     final tasks = await db.query('taskBoard', orderBy: 'id');
//     final List<TaskBoard> taskList =
//         tasks.isNotEmpty ? tasks.map(TaskBoard.fromMap).toList() : [];
//     return taskList;
//   }

//   Future<int> add(TaskBoard taksBoard) async {
//     final db = await DatabaseHelper.instance.database;
//     return db.insert('taskBoard', taksBoard.toMap());
//   }

//   Future<int> remove(TaskBoard tasksBoard) async {
//     final db = await DatabaseHelper.instance.database;
//     await TaskItemRepository().removeParent(tasksBoard);
//     return db.delete('taskBoard', where: 'id = ?', whereArgs: [tasksBoard.id]);
//   }

//   Future<int> update(TaskBoard taskBoard) async {
//     final db = await DatabaseHelper.instance.database;
//     return await db.update(
//       'taskBoard',
//       taskBoard.toMap(),
//       where: 'id = ?',
//       whereArgs: [taskBoard.id],
//     );
//   }
// }
