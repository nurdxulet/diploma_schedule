import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/features/auth/repository/auth_repository.dart';
import 'package:schedule/features/onboarding/repository/onboarding_repository.dart';
import 'package:schedule/features/search/models/group_dto.dart';
import 'package:schedule/features/search/models/university_dto.dart';

part 'groups_cubit.freezed.dart';

class GroupsCubit extends Cubit<GroupsState> {
  final IOnboardingRepository _repository;
  final IAuthRepository _authRepository;
  GroupsCubit(this._repository, this._authRepository) : super(const GroupsState.initialState());

  Future<void> getEduProgramCourses(String educationalProgramId, int courseNumber) async {
    final UniversityDTO? university = await _authRepository.getUniversityFromCache();

    emit(const GroupsState.loadingState());
    final result = await _repository.getGroups(university!.code!, educationalProgramId, courseNumber);
    result.when(
      success: (groups) => emit(GroupsState.loadedState(groups: groups)),
      failure: (error) => emit(
        GroupsState.errorState(
          message: error.msg ?? "Ошибка при получении списка вопросов",
        ),
      ),
    );
  }

  void toInitital() {
    emit(const GroupsState.loadingState());
  }
}

@freezed
class GroupsState with _$GroupsState {
  const factory GroupsState.initialState() = _InitialState;
  const factory GroupsState.loadingState() = _LoadingState;
  const factory GroupsState.loadedState({
    required List<GroupDTO> groups,
  }) = _LoadedEduProgramsState;
  const factory GroupsState.errorState({
    required String message,
  }) = _ErrorState;
}
