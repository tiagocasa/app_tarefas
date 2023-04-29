import 'package:mobx/mobx.dart';

part 'task_board_model.g.dart';

// ignore: library_private_types_in_public_api
class TaskBoardModel = _TaskBoardModel with _$TaskBoardModel;

abstract class _TaskBoardModel with Store {
  @observable
  int? id;
  @observable
  late String? name;
  @observable
  bool? isActive = true;
  @observable
  int? tasks = 0;
  @observable
  int? completedTasks = 0;

  _TaskBoardModel({
    required this.name,
  });

  // Map<String, dynamic> toMap() {
  //   final map = <String, dynamic>{
  //     DatabaseProvider.columnBoardName: name,
  //     DatabaseProvider.columnIsActive: isActive,
  //     DatabaseProvider.columnTotalCompletedTasks: completedTasks,
  //     DatabaseProvider.columnTotalTasks: tasks,
  //   };
  //   if (id != null) {
  //     map[DatabaseProvider.columnId] = id;
  //   }
  //   return map;
  // }

  // _TaskBoardModel.fromMap(Map<String, Object?> map) {
  //   id = map[DatabaseProvider.columnId] as int?;
  //   name = map[DatabaseProvider.columnBoardName] as String?;
  //   isActive = map[DatabaseProvider.columnIsActive] as bool?;
  //   tasks = map[DatabaseProvider.columnTotalTasks] as int?;
  //   completedTasks = map[DatabaseProvider.columnTotalCompletedTasks] as int?;
  // }
}

// TODO : colocar uma variavel de quantidade de tasks e quantidade de tasks concluidas e progress dentro do TaskBoard
// Ver o video de como criar o edit, passar a id da TaskBoard como Variavel (Mobx) para dentro de da tela de edit_task
//usar a edit para mostrar as task com aquela parent_id, quando criar uma nova task usar esse parent_id