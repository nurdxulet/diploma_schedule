import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/features/auth/repository/auth_repository.dart';
import 'package:schedule/features/onboarding/models/course_dto.dart';
import 'package:schedule/features/onboarding/repository/onboarding_repository.dart';
import 'package:schedule/features/search/models/university_dto.dart';

part 'edu_courses_cubit.freezed.dart';

class EduProgramCoursesCubit extends Cubit<EduProgramCoursesState> {
  final IOnboardingRepository _repository;
  final IAuthRepository _authRepository;
  EduProgramCoursesCubit(this._repository, this._authRepository) : super(const EduProgramCoursesState.initialState());

  Future<void> getEduProgramCourses(String educationalProgramId) async {
    final UniversityDTO? university = await _authRepository.getUniversityFromCache();

    emit(const EduProgramCoursesState.loadingState());
    final result = await _repository.getEduProgramCourses(university!.code!, educationalProgramId);
    result.when(
      success: (eduProgramCourses) => emit(EduProgramCoursesState.loadedState(eduProgramCourses: eduProgramCourses)),
      failure: (error) => emit(
        EduProgramCoursesState.errorState(
          message: error.msg ?? "Ошибка при получении списка вопросов",
        ),
      ),
    );
  }

  void toInitital() {
    emit(const EduProgramCoursesState.loadingState());
  }
}

@freezed
class EduProgramCoursesState with _$EduProgramCoursesState {
  const factory EduProgramCoursesState.initialState() = _InitialState;
  const factory EduProgramCoursesState.loadingState() = _LoadingState;
  const factory EduProgramCoursesState.loadedState({
    required List<CourseDTO> eduProgramCourses,
  }) = _LoadedEduProgramsState;
  const factory EduProgramCoursesState.errorState({
    required String message,
  }) = _ErrorState;
}
