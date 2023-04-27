import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarefas/src/app_widget.dart';
import 'package:tarefas/src/home/stores/task_store.dart';
import 'package:tarefas/src/shared/stores/theme_store.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        Provider<ThemeStore>(
          create: (_) => ThemeStore(),
        ),
        Provider<TaskStore>(
          create: (_) => TaskStore(),
        ),
      ],
      builder: (context, child) {
        return const AppWidget();
      },
    ),
  );
}
