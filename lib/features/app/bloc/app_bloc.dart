import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/features/auth/repository/auth_repository.dart';
import 'package:schedule/features/onboarding/repository/onboarding_repository.dart';

part 'app_bloc.freezed.dart';

const _tag = 'AppBLoC';

class AppBLoC extends Bloc<AppEvent, AppState> {
  final IAuthRepository _authRepository;
  final IOnboardingRepository _onboardingRepository;

  // Статус аутентификации
  // bool get isAuthenticated => _authRepository.isAuthenticated;
  bool get isAuthenticated => _onboardingRepository.isAuthenticated;

  AppBLoC(
    this._onboardingRepository,
    this._authRepository,
  ) : super(const AppState.loadingState()) {
    // _notAuthLogic.statusSubject.listen(
    //   (value) async {
    //     log('_startListenDio message from stream :: $value');

    //     if (value == 401) {
    //       await _authRepository
    //           .logOut(
    //         onlyLocally: true,
    //       )
    //           .whenComplete(() {
    //         add(const AppEvent.startListenDio());
    //         log('is worked');
    //         // }
    //       });
    //       // }
    //     }
    //   },
    // );

    on<AppEvent>(
      (AppEvent event, Emitter<AppState> emit) async => event.map(
        exiting: (_Exiting event) async => _exit(event, emit),
        checkAuth: (_CheckAuth event) async => _checkAuth(event, emit),
        logining: (_Logining event) async => _login(event, emit),
        refreshLocal: (_RefreshLocal event) async => _refreshLocal(event, emit),
        startListenDio: (_StartListenDio event) async => _startListenDio(event, emit),
        sendDeviceToken: (_SendDeviceToken event) async => _sendDeviceToken(event, emit),
        onboardingSave: (_OnboardingSave event) async => _onboardingSave(event, emit),
      ),
    );
  }

  Future<void> _checkAuth(
    _CheckAuth event,
    Emitter<AppState> emit,
  ) async {
    ///onboarding only one time
    ///
    // if (_authRepository.isAuthenticated) {
    if (_onboardingRepository.isAuthenticated) {
      emit(const AppState.inAppState());
    } else {
      emit(const AppState.notAuthorizedState());
    }
  }

  Future<void> _onboardingSave(
    _OnboardingSave event,
    Emitter<AppState> emit,
  ) async {
    _authRepository.setOnboarding(onboarding: true);
    emit(const AppState.inAppState());
  }

  Future<void> _login(
    _Logining event,
    Emitter<AppState> emit,
  ) async {
    log('AppBloc _login', name: _tag);

    emit(const AppState.inAppState());
  }

  Future<void> _exit(
    _Exiting event,
    Emitter<AppState> emit,
  ) async {
    emit(const AppState.notAuthorizedState());
    await _authRepository.clearUser();
  }

  Future<void> _refreshLocal(
    _RefreshLocal event,
    Emitter<AppState> emit,
  ) async {
    await state.maybeWhen(
      inAppState: () async {
        emit(const AppState.loadingState());
        await Future.delayed(const Duration(milliseconds: 100));
        emit(const AppState.inAppState());
      },
      orElse: () async {
        emit(const AppState.loadingState());
        await Future.delayed(const Duration(milliseconds: 100));
        emit(const AppState.notAuthorizedState());
      },
    );
  }

  Future<void> _startListenDio(
    _StartListenDio event,
    Emitter<AppState> emit,
  ) async {
    emit(const AppState.notAuthorizedState());
    // int latestStatus = 0;

    // _notAuthLogic.statusSubject.listen(
    //   (value) async {
    //     log('_startListenDio message from stream :: $value');

    //     if (value == 401) {
    //       // if (latestStatus != 401) {
    //       await _authRepository
    //           .logOut(
    //         onlyLocally: true,
    //       )
    //           .whenComplete(() {
    //         // if (!emit.isDone) {
    //         emit(const AppState.notAuthorizedState());
    //         log('is worked');
    //         // }
    //       });
    //       // }
    //     }
    //     latestStatus = value;
    //   },
    // );
  }

  Future<void> _sendDeviceToken(
    _SendDeviceToken event,
    Emitter<AppState> emit,
  ) async {
    // final result = await _authRepository.sendDeviceToken();

    // result.fold(
    //   (l) {
    //     log('_sendDeviceToken left: ${mapFailureToMessage(l)}', name: _tag);
    //   },
    //   (r) {
    //     log('_sendDeviceToken righy: $r', name: _tag);
    //   },
    // );
  }
}

///
///
/// Event class
///
///
@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.checkAuth() = _CheckAuth;

  const factory AppEvent.logining() = _Logining;

  const factory AppEvent.exiting() = _Exiting;

  const factory AppEvent.refreshLocal() = _RefreshLocal;

  const factory AppEvent.startListenDio() = _StartListenDio;

  const factory AppEvent.sendDeviceToken() = _SendDeviceToken;

  const factory AppEvent.onboardingSave() = _OnboardingSave;
}

///
///
/// State class
///
///
@freezed
class AppState with _$AppState {
  const factory AppState.loadingState() = _LoadingState;

  const factory AppState.notAuthorizedState() = _NotAuthorizedState;

  const factory AppState.onboardingState() = _OnboardingState;

  const factory AppState.inAppState() = _InAppState;

  const factory AppState.errorState({
    required String message,
  }) = _ErrorState;
}
