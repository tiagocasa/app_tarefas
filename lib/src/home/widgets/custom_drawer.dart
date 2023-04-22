import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
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
          label: Row(
            children: [
              const Text(
                'Sincronizar',
              ),
              const SizedBox(
                width: 18,
              ),
              Text('12/12/2012 as 12:12h',
                  style: Theme.of(context).textTheme.bodySmall),
            ],
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
