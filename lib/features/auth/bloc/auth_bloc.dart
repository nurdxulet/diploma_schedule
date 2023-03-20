import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';

// const _tag = 'AuthBloc';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.loginState()) {
    on<AuthEvent>(
      (AuthEvent event, Emitter<AuthState> emit) async => event.map(
        login: (_Login event) async => _login(emit),
        register: (_Register event) async => _register(event, emit),
        registerConfirmation: (_RegisterConfirmation event) async =>
            _registerConfirmation(event, emit),
      ),
    );
  }

  Future<void> _login(
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loginState());
  }

  Future<void> _register(
    _Register event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.registerState());
  }

  Future<void> _registerConfirmation(
    _RegisterConfirmation event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.registerConfirmationState());
  }
}

///
///
/// Event class
///
///
@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login() = _Login;

  const factory AuthEvent.register() = _Register;

  const factory AuthEvent.registerConfirmation() = _RegisterConfirmation;
}

///
///
/// State class
///
///
@freezed
class AuthState with _$AuthState {
  const factory AuthState.loginState() = _LoginState;

  const factory AuthState.registerState() = _RegisterState;

  const factory AuthState.registerConfirmationState() =
      _RegisterConfirmationState;
}
