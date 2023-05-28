import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/features/home/data/models/schedule_dto.dart';
import 'package:schedule/features/home/repositories/home_repository.dart';
import 'package:schedule/features/onboarding/models/edu_program_dto.dart';
import 'package:schedule/features/onboarding/repository/onboarding_repository.dart';
import 'package:schedule/features/search/models/group_dto.dart';
import 'package:schedule/features/search/models/university_dto.dart';

part 'my_schedule_cubit.freezed.dart';

class MyScheduleCubit extends Cubit<MyScheduleState> {
  final IHomeRepository _repository;
  final IOnboardingRepository _onboardingRepository;
  MyScheduleCubit(this._repository, this._onboardingRepository) : super(const MyScheduleState.initialState());

  List<ScheduleDTO> _schedules = [];

  Future<void> getMySchedules(String searchType) async {
    emit(const MyScheduleState.loadingState());

    final UniversityDTO? university = await _onboardingRepository.getUniversityFromCache();
    final GroupDTO? group = await _onboardingRepository.getGroupFromCache();
    // log('${university?.code}');
    if (university != null) {
      final result = await _repository.getMySchedules(university.code!, group!.id, searchType);

      result.when(
        success: (schedules) {
          _schedules = schedules;
          emit(MyScheduleState.loadedState(schedules: _schedules));
        },
        failure: (error) => emit(
          MyScheduleState.errorState(
            message: error.msg ?? "Ошибка при получении universityDTOFromCahche",
          ),
        ),
      );
    }
  }

  void sortList({required bool isFromTop}) {
    _schedules = _schedules.reversed.toList();
    emit(MyScheduleState.loadedState(schedules: _schedules));
  }

  void toInitital() {
    emit(const MyScheduleState.loadingState());
  }
}

@freezed
class MyScheduleState with _$MyScheduleState {
  const factory MyScheduleState.initialState() = _InitialState;
  const factory MyScheduleState.loadingState() = _LoadingState;
  const factory MyScheduleState.loadedState({
    required List<ScheduleDTO> schedules,
  }) = _LoadedState;
  const factory MyScheduleState.errorState({
    required String message,
  }) = _ErrorState;
}
