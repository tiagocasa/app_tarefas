// ignore_for_file: use_setters_to_change_properties

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:tarefas/src/shared/domain/repositories/configuration_repository.dart';

part 'configuration_model.g.dart';

class ConfigurationModel = _ConfigurationModel with _$ConfigurationModel;

abstract class _ConfigurationModel with Store {
  final ConfigurationRepository _configurationRepository;
  _ConfigurationModel(this._configurationRepository) {
    init();
  }

  @observable
  ThemeMode? themeMode = ThemeMode.system;

  @observable
  DateTime? syncDate;

  @action
  void changeThemeMode(ThemeMode? newThemeMode) {
    themeMode = newThemeMode;
    save();
  }

  @action
  void setSyncDate(DateTime date) {
    syncDate = date;
    save();
  }

  @action
  void save() {
    _configurationRepository.saveConfiguration(
        getThemeModeName(themeMode), syncDate);
  }

  @action
  void init() {
    final configuration = _configurationRepository.getConfiguration();
    syncDate = configuration.syncDate;
    themeMode = _getThemeModeByName(configuration.themeModeName);
  }

  ThemeMode _getThemeModeByName(String name) {
    return ThemeMode.values.firstWhere((mode) => mode.name == name);
  }

  String getThemeModeName(ThemeMode? themeMode) {
    if (themeMode?.index == 1) {
      return 'light';
    } else if (themeMode?.index == 2) {
      return 'dark';
    }
    return 'system';
  }
}
