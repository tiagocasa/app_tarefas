// import 'package:sqflite/sqflite.dart';

// import '../../../core/home/models/task_item_model.dart';
// import '../../../core/home/models/task_board_model.dart';
// import '../database_provider.dart';

// class TaskItemRepository {
//   late Database db;

//   Future<List<Task>> getTasksItens(int? parentId) async {
//     final db = await DatabaseHelper.instance.database;
//     final tasks = await db.query(
//       'taskItens',
//       orderBy: 'id',
//       where: 'parentId = ?',
//       whereArgs: [parentId],
//     );
//     final List<Task> task =
//         tasks.isNotEmpty ? tasks.map(Task.fromMap).toList() : [];
//     return task;
//   }

//   Future<int> add(Task taskItem) async {
//     final db = await DatabaseHelper.instance.database;
//     return db.insert('taskItens', taskItem.toMap());
//   }

//   Future<Task> insert(Task todo) async {
//     todo.id = await db.insert('taskItens', todo.toMap());
//     return todo;
//   }

//   Future<int?> delete(int id) async {
//     return await db.delete('taskItens', where: 'id= ?', whereArgs: [id]);
//   }

//   Future<int?> remove(int id) async {
//     final db = await DatabaseHelper.instance.database;
//     return db.delete('taskItens', where: 'id = ?', whereArgs: [id]);
//   }

//   Future<int> removeParent(TaskBoard tasksBoard) async {
//     final db = await DatabaseHelper.instance.database;
//     return db
//         .delete('taskItens', where: 'parentId = ?', whereArgs: [tasksBoard.id]);
//   }

//   Future<int> update(TaskBoard taskBoard) async {
//     final db = await DatabaseHelper.instance.database;
//     return db.update(
//       'taskItens',
//       taskBoard.toMap(),
//       where: 'id = ?',
//       whereArgs: [taskBoard.id],
//     );
//   }
// }
