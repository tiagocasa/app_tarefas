import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final syncDate = null;

    var syncDateText = 'Nunca';

    if (syncDate != null) {
      final format = DateFormat('dd/MM/yyyy às hh:mm');
      syncDateText = format.format(syncDate);
    }

    return NavigationDrawer(
      onDestinationSelected: (index) {
        if (index == 1) {
          Navigator.of(context).pop();
          Navigator.of(context).pushNamed('/config');
        }
      },
      backgroundColor: Theme.of(context).colorScheme.surface,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 28, left: 16, bottom: 16),
          child: Text(
            'Options',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        NavigationDrawerDestination(
          icon: const Icon(Icons.sync),
          label: SizedBox(
            width: 210,
            child: Row(
              children: [
                const Text(
                  'Sincronizar',
                ),
                const Spacer(),
                Text(
                  syncDateText,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.settings),
          label: Text('Configurações'),
        ),
      ],
    );
  }
}
