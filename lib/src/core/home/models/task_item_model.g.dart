// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_item_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TaskItemModel on _TaskItemModel, Store {
  late final _$idAtom = Atom(name: '_TaskItemModel.id', context: context);

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

  late final _$parentIdAtom =
      Atom(name: '_TaskItemModel.parentId', context: context);

  @override
  int? get parentId {
    _$parentIdAtom.reportRead();
    return super.parentId;
  }

  @override
  set parentId(int? value) {
    _$parentIdAtom.reportWrite(value, super.parentId, () {
      super.parentId = value;
    });
  }

  late final _$taskNameAtom =
      Atom(name: '_TaskItemModel.taskName', context: context);

  @override
  String get taskName {
    _$taskNameAtom.reportRead();
    return super.taskName;
  }

  @override
  set taskName(String value) {
    _$taskNameAtom.reportWrite(value, super.taskName, () {
      super.taskName = value;
    });
  }

  late final _$isCompletedAtom =
      Atom(name: '_TaskItemModel.isCompleted', context: context);

  @override
  bool get isCompleted {
    _$isCompletedAtom.reportRead();
    return super.isCompleted;
  }

  @override
  set isCompleted(bool value) {
    _$isCompletedAtom.reportWrite(value, super.isCompleted, () {
      super.isCompleted = value;
    });
  }

  @override
  String toString() {
    return '''
id: ${id},
parentId: ${parentId},
taskName: ${taskName},
isCompleted: ${isCompleted}
    ''';
  }
}
