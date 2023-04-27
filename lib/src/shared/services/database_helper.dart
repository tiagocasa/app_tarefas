import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../../home/models/task.dart';
import '../../home/models/task_board.dart';

class DatabaseHelper {
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'tarefa.db');
    return openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE taskBoard(
        id INTEGER PRIMARY KEY,
        name TEXT,
        isActive INTEGER,
        tasks INTEGER,
        completedTasks INTEGER
      )
    ''');
    await db.execute('''
      CREATE TABLE taskItens(
        id INTEGER PRIMARY KEY,
        parentId INTEGER,
        taskName TEXT,
        isCompleted INTEGER
      )
    ''');
  }

  Future<List<TaskBoard>> getTasks() async {
    final db = await instance.database;
    final tasks = await db.query('taskBoard', orderBy: 'id');
    final List<TaskBoard> taskList =
        tasks.isNotEmpty ? tasks.map(TaskBoard.fromMap).toList() : [];
    return taskList;
  }

  Future<int> add(TaskBoard taksBoard) async {
    final db = await instance.database;
    return db.insert('taskBoard', taksBoard.toMap());
  }

  Future<int> remove(int id) async {
    final db = await instance.database;
    return db.delete('taskBoard', where: 'id = ?', whereArgs: [id]);
  }

  Future<int> update(TaskBoard taskBoard) async {
    final db = await instance.database;
    return db.update(
      'taskBoard',
      taskBoard.toMap(),
      where: 'id = ?',
      whereArgs: [taskBoard.id],
    );
  }

  ////////// TASKS ITENS
  ///
  Future<List<Task>> getTasksItens(int? parentId) async {
    final db = await instance.database;
    final tasks = await db.query(
      'taskItens',
      orderBy: 'id',
      where: 'parentId = ?',
      whereArgs: [parentId],
    );
    final List<Task> task =
        tasks.isNotEmpty ? tasks.map(Task.fromMap).toList() : [];
    return task;
  }

  Future<int> addTask(Task taskItem) async {
    final db = await instance.database;
    return db.insert('taskItens', taskItem.toMap());
  }

  Future<int> removeTask(int id) async {
    final db = await instance.database;
    return db.delete('taskItens', where: 'id = ?', whereArgs: [id]);
  }

  Future<int> updateTask(TaskBoard taskBoard) async {
    final db = await instance.database;
    return db.update(
      'taskItens',
      taskBoard.toMap(),
      where: 'id = ?',
      whereArgs: [taskBoard.id],
    );
  }
}
