import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation_template/auth/auth_bloc.dart';
import 'package:navigation_template/router/guards.dart';
import 'package:navigation_template/router/router.dart';

void main() {
  runApp(const TemplateApp());
}

class TemplateApp extends StatefulWidget {
  const TemplateApp({Key? key}) : super(key: key);

  @override
  State<TemplateApp> createState() => _TemplateAppState();
}

class _TemplateAppState extends State<TemplateApp> {
  late final AuthBloc _authBloc;
  late final RootRouter _rootRouter;


  @override
  void initState() {
    super.initState();
    _authBloc = AuthBloc();
    _rootRouter = RootRouter(authGuard: AuthGuard(_authBloc));
  }


  @override
  void dispose() {
    _authBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _authBloc,
      child: BlocListener<AuthBloc, AuthStatus>(
        listener: (context, state) {
          if (state.isUnauth) {
            _rootRouter.replaceAll([const SettingsRoute()]);
          }
        },
        child: MaterialApp.router(
          theme: ThemeData.dark(),
          routerDelegate: _rootRouter.delegate(),
          routeInformationProvider: _rootRouter.routeInfoProvider(),
          routeInformationParser: _rootRouter.defaultRouteParser(),
          title: 'Навигационный шаблон',
        ),
      ),
    );
  }
}
