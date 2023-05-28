import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/onboarding/models/course_dto.dart';
import 'package:schedule/features/onboarding/models/edu_program_dto.dart';
import 'package:schedule/features/onboarding/repository/onboarding_repository.dart';
import 'package:schedule/features/search/models/group_dto.dart';
import 'package:schedule/features/search/models/university_dto.dart';

part 'ready_cubit.freezed.dart';

class ReadyCubit extends Cubit<ReadyState> {
  final IOnboardingRepository _repository;
  ReadyCubit(this._repository) : super(const ReadyState.initialState());

  Future<void> setUniInfo(
    EduProgramDTO educationalProgram,
    CourseDTO course,
    GroupDTO group,
  ) async {
    emit(const ReadyState.loadingState());
    final result = await _repository.setUniInfo(educationalProgram, course, group);

    final UniversityDTO? university = await _repository.getUniversityFromCache();
    if (result.isNotEmpty) {
      emit(
        ReadyState.loadedState(
          university: university,
          educationalProgram: educationalProgram,
          course: course,
          group: group,
        ),
      );
    } else {
      emit(
        const ReadyState.errorState(message: 'Error save data [ReadyCubit]'),
      );
    }
  }
}

@freezed
class ReadyState with _$ReadyState {
  const factory ReadyState.initialState() = _InitialState;
  const factory ReadyState.loadingState() = _LoadingState;
  const factory ReadyState.loadedState({
    UniversityDTO? university,
    EduProgramDTO? educationalProgram,
    CourseDTO? course,
    GroupDTO? group,
  }) = _LoadedState;
  const factory ReadyState.errorState({
    required String message,
  }) = _ErrorState;
}
