part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {
  const AuthEvent();
}

class LoggedIn extends AuthEvent {
  const LoggedIn();
}

class LoggedOut extends AuthEvent {
  const LoggedOut();
}