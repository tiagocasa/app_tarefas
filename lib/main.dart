import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarefas/src/app_widget.dart';
import 'package:tarefas/src/shared/stores/theme_store.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<ThemeStore>(
          create: (_) => ThemeStore(),
        ),
      ],
      builder: (context, child) {
        return const AppWidget();
      },
    ),
  );
}
