import 'package:flutter_modular/flutter_modular.dart';
import 'package:realm/realm.dart';
import 'package:tarefas/src/shared/data/realm_config.dart';
import 'package:tarefas/src/shared/data/repositories/configuration_repository_impl.dart';
import 'package:tarefas/src/shared/domain/models/configuration_model.dart';
import 'package:tarefas/src/shared/domain/repositories/configuration_repository.dart';

import 'core/configuration/configuration_module.dart';
import 'core/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.instance<Realm>(Realm(config)),
        AutoBind.factory<ConfigurationRepository>(
          ConfigurationRepositoryImpl.new,
        ),
        AutoBind.singleton(ConfigurationModel.new),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/config', module: ConfigurationModule())
      ];
}
