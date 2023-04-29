import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'shared/domain/models/configuration_model.dart';
import 'shared/presentation/themes/themes.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/home/');
    //final themeStore = context.watch<AppStore>((store) => store.themeMode);
    final configuration = Modular.get<ConfigurationModel>();
    return Observer(
      builder: (_) {
        return MaterialApp.router(
          title: 'Minhas Tarefas',
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: configuration.themeMode,
          routerDelegate: Modular.routerDelegate,
          routeInformationParser: Modular.routeInformationParser,
        );
      },
    );
  }
}
