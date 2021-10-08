import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation_template/auth/auth_bloc.dart';
import 'package:navigation_template/widgets/app_drawer.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isAuth = context.select<AuthBloc, bool>(
      (value) => value.state.isAuth,
    );
    return Scaffold(
      appBar: AppBar(),
      drawer: isAuth ? const AppDrawer() : null,
      body: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(const LoggedIn());
                  },
                  child: const Text('Войти'),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(const LoggedOut());
                  },
                  child: const Text('Выйти'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
