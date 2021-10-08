import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:navigation_template/router/router.gr.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(child: Text('Меню')),
          ListTile(
            title: const Text('Настройка'),
            onTap: () => context.router.replaceAll([const SettingsRoute()]),
          ),
          ListTile(
            title: const Text('Задачи'),
            onTap: () => context.router.replaceAll([const LaborJournalRoute()]),
          ),
          ListTile(
            title: const Text('Рабочий стол'),
            onTap: () => context.router.replaceAll([const DesktopRoute()]),
          ),
        ],
      ),
    );
  }
}
