part of 'auth_bloc.dart';

enum AuthStatus { unknown, unauth, auth }

extension AuthStatusX on AuthStatus {
  bool get isUnknown => this == AuthStatus.unknown;

  bool get isUnauth => this == AuthStatus.unauth;

  bool get isAuth => this == AuthStatus.auth;
}