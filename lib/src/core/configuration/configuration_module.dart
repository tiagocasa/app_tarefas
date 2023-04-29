import 'package:flutter_modular/flutter_modular.dart';
import 'package:tarefas/src/core/configuration/presentation/configuration_page.dart';

import 'data/repositories/configuration_repository_impl.dart';
import 'domain/models/configuration_model.dart';

class ConfigurationModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.factory((i) => ConfigurationRepositoryImpl(i()), export: true),
        Bind.lazySingleton((i) => ConfigurationModel(i()), export: true)
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const ConfigurationPage(),
        )
      ];
}
