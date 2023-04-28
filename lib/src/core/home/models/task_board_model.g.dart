// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_board_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TaskBoardModel on _TaskBoardModel, Store {
  late final _$idAtom = Atom(name: '_TaskBoardModel.id', context: context);

  @override
  int? get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(int? value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  late final _$nameAtom = Atom(name: '_TaskBoardModel.name', context: context);

  @override
  String? get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String? value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$isActiveAtom =
      Atom(name: '_TaskBoardModel.isActive', context: context);

  @override
  bool? get isActive {
    _$isActiveAtom.reportRead();
    return super.isActive;
  }

  @override
  set isActive(bool? value) {
    _$isActiveAtom.reportWrite(value, super.isActive, () {
      super.isActive = value;
    });
  }

  late final _$tasksAtom =
      Atom(name: '_TaskBoardModel.tasks', context: context);

  @override
  int? get tasks {
    _$tasksAtom.reportRead();
    return super.tasks;
  }

  @override
  set tasks(int? value) {
    _$tasksAtom.reportWrite(value, super.tasks, () {
      super.tasks = value;
    });
  }

  late final _$completedTasksAtom =
      Atom(name: '_TaskBoardModel.completedTasks', context: context);

  @override
  int? get completedTasks {
    _$completedTasksAtom.reportRead();
    return super.completedTasks;
  }

  @override
  set completedTasks(int? value) {
    _$completedTasksAtom.reportWrite(value, super.completedTasks, () {
      super.completedTasks = value;
    });
  }

  @override
  String toString() {
    return '''
id: ${id},
name: ${name},
isActive: ${isActive},
tasks: ${tasks},
completedTasks: ${completedTasks}
    ''';
  }
}
