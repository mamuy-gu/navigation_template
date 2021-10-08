import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:navigation_template/widgets/app_drawer.dart';

class DesktopPage extends StatelessWidget {
  const DesktopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Рабочий стол')),
      drawer: const AppDrawer(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.router.pushNamed('/labor/1/children?serverCode=no-local');
          },
          child: const Text('К заадче'),
        ), //
      ),
    );
  }
}
