import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'theme_store.g.dart';

class ThemeStore = ThemeStoreBase with _$ThemeStore;

abstract class ThemeStoreBase with Store {
  @observable
  ThemeMode? mode = ThemeMode.system;

  @action
  void changeThemeMode(ThemeMode? model) => mode = model;
}
