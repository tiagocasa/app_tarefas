import 'package:mobx/mobx.dart';

part 'task_item_model.g.dart';

// ignore: library_private_types_in_public_api
class TaskItemModel = _TaskItemModel with _$TaskItemModel;

abstract class _TaskItemModel with Store {
  @observable
  int? id;
  @observable
  int? parentId;
  @observable
  String taskName;
  @observable
  bool isCompleted = false;

  _TaskItemModel({
    required this.parentId,
    required this.taskName,
  });
}
