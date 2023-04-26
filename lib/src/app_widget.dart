import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:tarefas/src/configuration/configuration_page.dart';
import 'package:tarefas/src/home/edit_task_board_page.dart';
import 'package:tarefas/src/home/home_page.dart';
import 'package:tarefas/src/shared/stores/theme_store.dart';
import 'package:tarefas/src/shared/themes/themes.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  ThemeStore themeStore = ThemeStore();

  @override
  Widget build(BuildContext context) {
    final themeStore = Provider.of<ThemeStore>(context);
    return Observer(
      builder: (_) {
        return MaterialApp(
          title: 'Minhas Tarefas',
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: themeStore.mode,
          home: const HomePage(),
          routes: {
            '/home': (context) => const HomePage(),
            '/config': (context) => const ConfigurationPage(),
            '/edit': (context) => const EditTaskBoardPage()
          },
        );
      },
    );
  }
}
