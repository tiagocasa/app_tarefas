// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ConfigurationModel on _ConfigurationModel, Store {
  late final _$themeModeAtom =
      Atom(name: '_ConfigurationModel.themeMode', context: context);

  @override
  ThemeMode? get themeMode {
    _$themeModeAtom.reportRead();
    return super.themeMode;
  }

  @override
  set themeMode(ThemeMode? value) {
    _$themeModeAtom.reportWrite(value, super.themeMode, () {
      super.themeMode = value;
    });
  }

  late final _$syncDateAtom =
      Atom(name: '_ConfigurationModel.syncDate', context: context);

  @override
  DateTime? get syncDate {
    _$syncDateAtom.reportRead();
    return super.syncDate;
  }

  @override
  set syncDate(DateTime? value) {
    _$syncDateAtom.reportWrite(value, super.syncDate, () {
      super.syncDate = value;
    });
  }

  late final _$_ConfigurationModelActionController =
      ActionController(name: '_ConfigurationModel', context: context);

  @override
  void changeThemeMode(ThemeMode? newThemeMode) {
    final _$actionInfo = _$_ConfigurationModelActionController.startAction(
        name: '_ConfigurationModel.changeThemeMode');
    try {
      return super.changeThemeMode(newThemeMode);
    } finally {
      _$_ConfigurationModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSyncDate(DateTime date) {
    final _$actionInfo = _$_ConfigurationModelActionController.startAction(
        name: '_ConfigurationModel.setSyncDate');
    try {
      return super.setSyncDate(date);
    } finally {
      _$_ConfigurationModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void save() {
    final _$actionInfo = _$_ConfigurationModelActionController.startAction(
        name: '_ConfigurationModel.save');
    try {
      return super.save();
    } finally {
      _$_ConfigurationModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void init() {
    final _$actionInfo = _$_ConfigurationModelActionController.startAction(
        name: '_ConfigurationModel.init');
    try {
      return super.init();
    } finally {
      _$_ConfigurationModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
themeMode: ${themeMode},
syncDate: ${syncDate}
    ''';
  }
}
