import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/features/auth/model/user_dto.dart';
import 'package:schedule/features/auth/repository/auth_repository.dart';
import 'package:schedule/features/search/models/university_dto.dart';

part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(
    this._authRepository,
  ) : super(const LoginState.loadingState());
  final IAuthRepository _authRepository;

  Future<void> login({
    required String universityCode,
  }) async {
    emit(const LoginState.loadingState());

    final result = await _authRepository.login(
      universityCode: universityCode,
    );

    result.when(
      success: (UniversityDTO university) {
        emit(LoginState.loadedState(university: university));
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
    required UniversityDTO university,
  }) = _LoadedState;

  const factory LoginState.loadingState() = _LoadingState;

  const factory LoginState.errorState({
    required String message,
  }) = _ErrorState;
}
