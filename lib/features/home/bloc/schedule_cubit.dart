import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/features/home/data/models/schedule_dto.dart';
import 'package:schedule/features/home/repositories/home_repository.dart';
import 'package:schedule/features/onboarding/models/edu_program_dto.dart';
import 'package:schedule/features/onboarding/repository/onboarding_repository.dart';
import 'package:schedule/features/search/models/university_dto.dart';

part 'schedule_cubit.freezed.dart';

class ScheduleCubit extends Cubit<ScheduleState> {
  final IHomeRepository _repository;
  final IOnboardingRepository _onboardingRepository;
  ScheduleCubit(this._repository, this._onboardingRepository) : super(const ScheduleState.initialState());

  List<ScheduleDTO> _schedules = [];

  Future<void> getAllSchedules(String searchType) async {
    emit(const ScheduleState.loadingState());

    final UniversityDTO? university = await _onboardingRepository.getUniversityFromCache();
    final EduProgramDTO? educationalProgram = await _onboardingRepository.getEduProgramFromCache();
    // log('${university?.code}');
    if (university != null) {
      final result = await _repository.getAllSchedules(university.code!, educationalProgram!.id, searchType);

      result.when(
        success: (schedules) {
          _schedules = schedules;
          emit(ScheduleState.loadedState(schedules: _schedules));
        },
        failure: (error) => emit(
          ScheduleState.errorState(
            message: error.msg ?? "Ошибка при получении universityDTOFromCahche",
          ),
        ),
      );
    }
  }

  void sortList({required bool isFromTop}) {
    _schedules = _schedules.reversed.toList();
    emit(ScheduleState.loadedState(schedules: _schedules));
  }

  void toInitital() {
    emit(const ScheduleState.loadingState());
  }
}

@freezed
class ScheduleState with _$ScheduleState {
  const factory ScheduleState.initialState() = _InitialState;
  const factory ScheduleState.loadingState() = _LoadingState;
  const factory ScheduleState.loadedState({
    required List<ScheduleDTO> schedules,
  }) = _LoadedState;
  const factory ScheduleState.errorState({
    required String message,
  }) = _ErrorState;
}
