import 'package:flutter_modular/flutter_modular.dart';
import 'package:realm/realm.dart';
import 'package:tarefas/src/shared/services/realm_config.dart';

import 'core/configuration/configuration_module.dart';
import 'core/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        ConfigurationModule(),
      ];

  @override
  List<Bind> get binds => [
        Bind.instance<Realm>(Realm(config)),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/config', module: ConfigurationModule())
      ];
}
