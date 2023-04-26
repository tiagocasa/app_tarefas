import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../shared/stores/theme_store.dart';

class ConfigurationPage extends StatefulWidget {
  const ConfigurationPage({super.key});

  @override
  State<ConfigurationPage> createState() => _ConfigurationPageState();
}

class _ConfigurationPageState extends State<ConfigurationPage> {
  @override
  Widget build(BuildContext context) {
    final themeStore = Provider.of<ThemeStore>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Configurações')),
      body: Padding(
          padding: const EdgeInsets.all(30),
          child: Observer(
            builder: (context) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tema',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RadioListTile<ThemeMode>(
                    value: ThemeMode.system,
                    groupValue: themeStore.mode,
                    title: Text(
                      'Sistema',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    onChanged: themeStore.changeThemeMode,
                  ),
                  RadioListTile<ThemeMode>(
                    value: ThemeMode.light,
                    groupValue: themeStore.mode,
                    title: Text(
                      'Claro',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    onChanged: themeStore.changeThemeMode,
                  ),
                  RadioListTile<ThemeMode>(
                    value: ThemeMode.dark,
                    groupValue: themeStore.mode,
                    title: Text(
                      'Escuro',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    onChanged: (model) {
                      themeStore.changeThemeMode(model);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Controle de dados',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  OutlinedButton(
                    onPressed: () {}, // appStore.deleteApp,
                    child: const Text(
                      'Apagar cache e reiniciar o app',
                    ),
                  )
                ],
              );
            },
          )),
    );
  }
}
