import 'package:flutter_modular/flutter_modular.dart';

import 'configuration_page.dart';

class ConfigurationModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const ConfigurationPage(),
        )
      ];
}
