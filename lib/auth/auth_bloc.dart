import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthStatus> {
  AuthBloc() : super(AuthStatus.unauth) {
    on<LoggedIn>((event, emit) => onLoggedIn(event, emit));
    on<LoggedOut>((event, emit) => onLoggedOut(event, emit));
  }

  Future<void> onLoggedIn(LoggedIn event, Emitter emit) async {
    emit(AuthStatus.unknown);
    emit(AuthStatus.auth);
  }

  Future<void> onLoggedOut(LoggedOut event, Emitter emit) async {
    emit(AuthStatus.unknown);
    emit(AuthStatus.unauth);
  }
}
