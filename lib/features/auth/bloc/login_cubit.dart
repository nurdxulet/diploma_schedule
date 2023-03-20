import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/features/auth/model/user_dto.dart';
import 'package:schedule/features/auth/repository/auth_repository.dart';

part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(
    this._authRepository,
  ) : super(const LoginState.loadingState());
  final IAuthRepository _authRepository;

  Future<void> login({
    required String phone,
    required String password,
  }) async {
    emit(const LoginState.loadingState());

    final result = await _authRepository.login(
      phone: phone,
      password: password,
    );

    result.when(
      success: (UserDTO user) {
        emit(LoginState.loadedState(user: user));
      },
      failure: (e) {
        e.maybeWhen(
          orElse: () {
            emit(LoginState.errorState(message: e.msg ?? 'Ошибка логина'));
          },
        );
      },
    );
  }
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initialState() = _InitialState;

  const factory LoginState.loadedState({
    required UserDTO user,
  }) = _LoadedState;

  const factory LoginState.loadingState() = _LoadingState;

  const factory LoginState.errorState({
    required String message,
  }) = _ErrorState;
}
