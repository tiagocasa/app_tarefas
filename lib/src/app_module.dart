import 'package:flutter_modular/flutter_modular.dart';
import 'package:realm/realm.dart';
import 'package:tarefas/src/configuration/configuration_page.dart';
import 'package:tarefas/src/home/home_module.dart';
import 'package:tarefas/src/shared/services/realm/realm_config.dart';
import 'package:tarefas/src/shared/stores/app_store.dart';

import 'configuration/services/configuration_service.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        //Bind.instance<Realm>(Realm(config)),
        Bind.factory<Realm>((i) => Realm(config)),
        Bind.singleton((i) => AppStore()),
        Bind.singleton<ConfigurationService>(
          (i) => ConfigurationServiceImpl(i(), i()),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          '/home',
          module: HomeModule(),
        ),
        ChildRoute(
          '/config',
          child: (context, args) => const ConfigurationPage(),
        )
      ];
}
