import 'package:flutter/material.dart';
//import 'package:realm/realm.dart';
import '../../shared/services/realm/models/configuration_model.dart';

abstract class ConfigurationService {
  void init();
  void deleteAll();
}

//class ConfigurationServiceImpl implements ConfigurationService {
  //final Realm realm;

  //ConfigurationServiceImpl(this.realm);

  // @override
  // void init() {
  //   final model = _getConfiguration();
    //appStore.themeMode.value = _getThemeModeByName(model.themeModeName);
    // appStore.syncDate.value = model.syncDate;

    //disposer = rxObserver(() {
    // final themeMode = appStore.themeMode.value;
    // final syncDate = appStore.syncDate.value;

    //_saveConfiguration(themeMode.name, syncDate);
    // });
 // }

  // @override
  // void deleteAll() {
  //   realm.deleteAll();
  // }

  // ConfigurationModel _getConfiguration() {
  //   return realm.all<ConfigurationModel>().first;
  // }

  // void _saveConfiguration(String themeModeName, DateTime? syncDate) {
  //   final model = _getConfiguration();
  //   realm.write(() {
  //     model
  //       ..themeModeName = themeModeName
  //       ..syncDate = syncDate;
  //   });
  // }

  // ThemeMode _getThemeModeByName(String name) {
  //   return ThemeMode.values.firstWhere((mode) => mode.name == name);
  // }
//}
