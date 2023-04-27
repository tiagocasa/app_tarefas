// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TaskStore on TaskStoreBase, Store {
  late final _$selectedTaskIdAtom =
      Atom(name: 'TaskStoreBase.selectedTaskId', context: context);

  @override
  int? get selectedTaskId {
    _$selectedTaskIdAtom.reportRead();
    return super.selectedTaskId;
  }

  @override
  set selectedTaskId(int? value) {
    _$selectedTaskIdAtom.reportWrite(value, super.selectedTaskId, () {
      super.selectedTaskId = value;
    });
  }

  late final _$TaskStoreBaseActionController =
      ActionController(name: 'TaskStoreBase', context: context);

  @override
  void changeTask(int? taskId) {
    final _$actionInfo = _$TaskStoreBaseActionController.startAction(
        name: 'TaskStoreBase.changeTask');
    try {
      return super.changeTask(taskId);
    } finally {
      _$TaskStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedTaskId: ${selectedTaskId}
    ''';
  }
}
