// ignore_for_file: use_setters_to_change_properties
import 'package:mobx/mobx.dart';
import 'package:tarefas/src/core/home/models/task_board_model.dart';

import '../../../shared/services/database_provider.dart';

part 'task_board_store.g.dart';

class TaskBoardStore extends _TaskBoardStore with _$TaskBoardStore {
  TaskBoardStore._();
  factory TaskBoardStore.getInstance() => _instance;
  static final TaskBoardStore _instance = TaskBoardStore._();
}

abstract class _TaskBoardStore with Store {
  @observable
  bool isLoading = false;

  @observable
  int? selectedTaskId = 0;

  @observable
  ObservableList<TaskBoardModel> _taskBoardList =
      ObservableList<TaskBoardModel>();

  @computed
  ObservableList<TaskBoardModel> get taskBoardList {
    return ObservableList<TaskBoardModel>.of(_taskBoardList);
  }

  @action
  getTaskBoard() {
    isLoading = true;
    DatabaseProvider.instance.getTaskBoard().then((boardList) {
      runInAction(() {
        _taskBoardList = ObservableList.of(boardList);
        isLoading = false;
      });
    });
  }

  @action
  addTaskBoard(TaskBoardModel taskBoard) {
    DatabaseProvider.instance.insert(taskBoard).then(
          (storedNote) => runInAction(
            () {
              _taskBoardList.insert(0, storedNote);
            },
          ),
        );
  }

  // @action
  // updateNote(TaskBoardModel updatedTask) {
  //   DatabaseProvider.instance.update(updatedTask).then((_) => runInAction(() {
  //         var founditem = _taskBoardList.firstWhere(
  //           (element) => element.id == updatedTask.id,
  //           orElse: () => null,
  //         );
  //         if (founditem != null) {
  //           founditem.content = updatednote.content;
  //           founditem.title = updatednote.title;
  //         }
  //       }));
  // }

  // @action
  // deleteNote(int id) {
  //   DatabaseProvider.db.delete(id).then((_) => runInAction(() {
  //         _taskBoardList.removeWhere((element) => element.id == id);
  //       }));
  // }

  @action
  void changeTask(int? taskId) => selectedTaskId = taskId;
}
