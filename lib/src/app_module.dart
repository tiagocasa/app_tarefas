import 'package:flutter_modular/flutter_modular.dart';
import 'package:tarefas/src/core/configuration/configuration_page.dart';

import 'core/configuration/configuration_module.dart';
import 'core/home/home_module.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/configuration', module: ConfigurationModule())
      ];
}
