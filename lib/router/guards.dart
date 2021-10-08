import 'package:auto_route/auto_route.dart';
import 'package:navigation_template/auth/auth_bloc.dart';
import 'package:navigation_template/router/router.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard(this.authBloc);

  final AuthBloc authBloc;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (authBloc.state.isAuth) {
      resolver.next(true);
    } else {
      router.replaceAll([const SettingsRoute()]);
    }
  }
}