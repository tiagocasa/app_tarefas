// ignore_for_file: use_setters_to_change_properties
import 'package:mobx/mobx.dart';

part 'task_store.g.dart';

class TaskStore = TaskStoreBase with _$TaskStore;

abstract class TaskStoreBase with Store {
  @observable
  int? selectedTaskId = 0;

  @action
  void changeTask(int? taskId) => selectedTaskId = taskId;
}
