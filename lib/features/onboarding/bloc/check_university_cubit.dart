import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/features/onboarding/repository/onboarding_repository.dart';
import 'package:schedule/features/search/models/university_dto.dart';

part 'check_university_cubit.freezed.dart';

class CheckUniversityCubit extends Cubit<CheckUniversityState> {
  final IOnboardingRepository _repository;
  CheckUniversityCubit(this._repository)
      : super(const CheckUniversityState.initialState());

  Future<void> checkUniversity(String universityCode) async {
    emit(const CheckUniversityState.loadingState());
    final result = await _repository.checkUniversity(universityCode);
    result.when(
      success: (university) =>
          emit(CheckUniversityState.loadedState(university: university)),
      failure: (error) => emit(
        CheckUniversityState.errorState(
          message: error.msg ?? "Ошибка при получении списка вопросов",
        ),
      ),
    );
  }

  void toInitital() {
    emit(const CheckUniversityState.loadingState());
  }
}

@freezed
class CheckUniversityState with _$CheckUniversityState {
  const factory CheckUniversityState.initialState() = _InitialState;
  const factory CheckUniversityState.loadingState() = _LoadingState;
  const factory CheckUniversityState.loadedState({
    required UniversityDTO university,
  }) = _LoadedState;
  const factory CheckUniversityState.errorState({
    required String message,
  }) = _ErrorState;
}
