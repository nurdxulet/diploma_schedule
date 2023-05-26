import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/features/onboarding/models/edu_program_dto.dart';
import 'package:schedule/features/onboarding/repository/onboarding_repository.dart';
import 'package:schedule/features/search/models/university_dto.dart';

part 'edu_programs_cubit.freezed.dart';

class EduProgramsCubit extends Cubit<EduProgramsState> {
  final IOnboardingRepository _repository;
  final IOnboardingRepository _onboardingRepository;
  EduProgramsCubit(this._repository, this._onboardingRepository) : super(const EduProgramsState.initialState());

  Future<void> getEduPrograms() async {
    final UniversityDTO? university = await _onboardingRepository.getUniversityFromCache();

    emit(const EduProgramsState.loadingState());
    final result = await _repository.getEduPrograms(university!.code!);
    result.when(
      success: (eduPrograms) {
        emit(EduProgramsState.loadedState(eduPrograms: eduPrograms));
      },
      failure: (error) => emit(
        EduProgramsState.errorState(
          message: error.msg ?? "Ошибка при получении списка вопросов",
        ),
      ),
    );
  }

  void toInitital() {
    emit(const EduProgramsState.loadingState());
  }
}

@freezed
class EduProgramsState with _$EduProgramsState {
  const factory EduProgramsState.initialState() = _InitialState;
  const factory EduProgramsState.loadingState() = _LoadingState;
  const factory EduProgramsState.loadedState({
    required List<EduProgramDTO> eduPrograms,
  }) = _LoadedEduProgramsState;
  const factory EduProgramsState.errorState({
    required String message,
  }) = _ErrorState;
}
