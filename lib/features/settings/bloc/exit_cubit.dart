import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/features/home/repositories/home_repository.dart';
import 'package:schedule/features/onboarding/repository/onboarding_repository.dart';

part 'exit_cubit.freezed.dart';

class ExitCubit extends Cubit<ExitState> {
  final IHomeRepository _repository;
  final IOnboardingRepository _onboardingRepository;
  ExitCubit(this._repository, this._onboardingRepository) : super(const ExitState.initialState());

  Future<void> removeAllFromShared() async {
    emit(const ExitState.loadingState());

    final result = await _repository.removeAllFromShared();
    await _onboardingRepository.setOnboarding(onboarding: false);
    if (result == true) {
      emit(
        const ExitState.loadedState(result: 'Success removeAllFromShared()'),
      );
    } else {
      emit(
        const ExitState.errorState(message: 'Error removeAllFromShared()'),
      );
    }
  }
}

@freezed
class ExitState with _$ExitState {
  const factory ExitState.initialState() = _InitialState;
  const factory ExitState.loadingState() = _LoadingState;
  const factory ExitState.loadedState({
    required String result,
  }) = _LoadedState;
  const factory ExitState.errorState({
    required String message,
  }) = _ErrorState;
}
