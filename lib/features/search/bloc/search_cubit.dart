import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/features/auth/repository/auth_repository.dart';
import 'package:schedule/features/search/models/group_dto.dart';
import 'package:schedule/features/search/models/teacher_dto.dart';
import 'package:schedule/features/search/models/university_dto.dart';
import 'package:schedule/features/search/repository/search_repository.dart';

part 'search_cubit.freezed.dart';

class SearchCubit extends Cubit<SearchState> {
  final ISearchRepository _repository;
  final IAuthRepository _authRepository;
  SearchCubit(this._repository, this._authRepository) : super(const SearchState.initialState());

  List<GroupDTO> _groups = [];
  List<TeacherDTO> _teachers = [];

  Future<void> getAllGroups() async {
    final UniversityDTO? university = await _authRepository.getUniversityFromCache();
    // log('${university?.code}');
    if (university != null) {
      final result = await _repository.getAllGroups(university.code!);

      result.when(
        success: (groups) {
          _groups = groups;
          emit(SearchState.loadedGroupsState(groups: _groups));
        },
        failure: (error) => emit(
          SearchState.errorState(
            message: error.msg ?? "Ошибка при получении universityDTOFromCahche",
          ),
        ),
      );
    }
  }

  Future<void> getAllTeachers() async {
    final UniversityDTO? university = await _authRepository.getUniversityFromCache();
    // log('${university?.code}');
    if (university != null) {
      final result = await _repository.getAllTeachers(university.code!);

      result.when(
        success: (teachers) {
          _teachers = teachers;
          emit(SearchState.loadedTeachersState(teachers: _teachers));
        },
        failure: (error) => emit(
          SearchState.errorState(
            message: error.msg ?? "Ошибка при получении universityDTOFromCahche",
          ),
        ),
      );
    }
  }

  // Future<void> getAllGroups(String universityCode) async {
  //   emit(const SearchState.loadingState());
  //   final result = await _repository.getAllGroups(universityCode);
  //   result.when(
  //     success: (groups) => emit(SearchState.loadedGroupsState(groups: groups)),
  //     failure: (error) => emit(
  //       SearchState.errorState(
  //         message: error.msg ?? "Ошибка при получении списка груп",
  //       ),
  //     ),
  //   );
  // }

  // Future<void> getAllTeachers(String universityCode) async {
  //   emit(const SearchState.loadingState());
  //   final result = await _repository.getAllTeachers(universityCode);
  //   result.when(
  //     success: (teachers) => emit(SearchState.loadedTeachersState(teachers: teachers)),
  //     failure: (error) => emit(
  //       SearchState.errorState(
  //         message: error.msg ?? "Ошибка при получении списка вопросов",
  //       ),
  //     ),
  //   );
  // }

  void toInitital() {
    emit(const SearchState.loadingState());
  }
}

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initialState() = _InitialState;
  const factory SearchState.loadingState() = _LoadingState;
  const factory SearchState.loadedGroupsState({
    required List<GroupDTO> groups,
  }) = _LoadedGroupsState;
  const factory SearchState.loadedTeachersState({
    required List<TeacherDTO> teachers,
  }) = _LoadedTeachersState;
  const factory SearchState.errorState({
    required String message,
  }) = _ErrorState;
}
