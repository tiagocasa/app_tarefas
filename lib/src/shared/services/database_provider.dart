// ignore_for_file: constant_identifier_names
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'package:sqflite/sqflite.dart';
import 'package:tarefas/src/core/home/models/task_board_model.dart';

class DatabaseProvider {
  static const String tableTaskBoards = 'task_boards';
  static const String columnId = '_id';
  static const String columnBoardName = 'board_name';
  static const String columnIsActive = 'is_active';
  static const String columnTotalTasks = 'total_tasks';
  static const String columnTotalCompletedTasks = 'total_completed_tasks';
  static const String tableTaskItens = 'task_itens';
  static const String columnParentId = 'parent_id';
  static const String columnTaskName = 'task_name';
  static const String columnIsCompleted = 'is_completed';

  DatabaseProvider._privateConstructor();
  static final DatabaseProvider instance =
      DatabaseProvider._privateConstructor();
  //late Database database;

  static Database? _database;
  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'groceries.db');
    return openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute(
      '''
          CREATE TABLE $tableTaskBoards (
          $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
          $columnBoardName INTEGER NOT NULL,
          $columnIsActive TEXT,
          $columnTotalTasks INTEGER,
          $columnTotalCompletedTasks INTEGER 
          )''',
    );
    await db.execute(
      '''
          CREATE TABLE $tableTaskItens (
          $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
          $columnParentId INTEGER NOT NULL,
          $columnTaskName TEXT,
          $columnIsCompleted INTEGER 
          )''',
    );
  }

  // Future open(String path) async {
  //   database = await openDatabase(
  //     path,
  //     version: 1,
  //     onCreate: (Database db, int version) async {
  //       await database.execute(
  //         '''
  //         CREATE TABLE $tableTaskBoards (
  //         $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
  //         $columnBoardName INTEGER NOT NULL,
  //         $columnIsActive TEXT,
  //         $columnTotalTasks INTEGER,
  //         $columnTotalCompletedTasks INTEGER
  //         )''',
  //       );
  //       await database.execute(
  //         '''
  //         CREATE TABLE $tableTaskItens (
  //         $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
  //         $columnParentId INTEGER NOT NULL,
  //         $columnTaskName TEXT,
  //         $columnIsCompleted INTEGER
  //         )''',
  //       );
  //     },
  //   );
  // }

  Future<List<TaskBoardModel>> getTaskBoard() async {
    final db = await instance.database;
    final maps = await db.query(
      tableTaskBoards,
    );
    final taskBoardList = <TaskBoardModel>[];
    for (final currentTaskBoard in maps) {
      final board = TaskBoardModel.fromMap(currentTaskBoard);
      taskBoardList.add(board);
      continue;
    }
    return taskBoardList.isNotEmpty ? taskBoardList : [];
  }

  Future<TaskBoardModel> insert(TaskBoardModel taskBoard) async {
    final db = await instance.database;
    taskBoard.id = await db.insert(tableTaskBoards, taskBoard.toMap());
    return taskBoard;
  }
}
