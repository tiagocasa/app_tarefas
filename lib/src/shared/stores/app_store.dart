import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';

class AppStore {
  final themeMode = RxNotifier(ThemeMode.system);
  final syncDate = RxNotifier<DateTime?>(null);

  // final ConfigurationService _configurationService;

  // AppStore(this._configurationService) {
  //   init();
  // }

  // void init() {
  //   final model = _configurationService.getConfiguration();
  //   syncDate.value = model.syncDate;
  //   themeMode.value = _getThemeModeByName(model.themeModeName);
  // }

  // void save() {
  //   _configurationService.saveConfiguration(
  //     themeMode.value.name,
  //     syncDate.value,
  //   );
  // }

  // void changeThemeMode(ThemeMode? mode) {
  //   if (mode != null) {
  //     themeMode.value = mode;
  //     save();
  //   }
  // }

  // void setSyncDate(DateTime date) {
  //   syncDate.value = date;
  //   save();
  // }

  // ThemeMode _getThemeModeByName(String name) {
  //   return ThemeMode.values.firstWhere((mode) => mode.name == name);
  // }

  // void deleteApp() {
  //   _configurationService.deleteAll();
  // }
}
