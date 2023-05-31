import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/features/home/data/models/schedule_dto.dart';
import 'package:schedule/features/onboarding/models/edu_program_dto.dart';
import 'package:schedule/features/onboarding/repository/onboarding_repository.dart';
import 'package:schedule/features/search/models/group_dto.dart';
import 'package:schedule/features/search/models/teacher_dto.dart';
import 'package:schedule/features/search/models/university_dto.dart';
import 'package:schedule/features/search/repository/search_repository.dart';

part 'search_cubit.freezed.dart';

class SearchCubit extends Cubit<SearchState> {
  final ISearchRepository _repository;
  final IOnboardingRepository _onboardingRepository;
  SearchCubit(this._repository, this._onboardingRepository) : super(const SearchState.initialState());

  List<GroupDTO> _groups = [];
  List<TeacherDTO> _teachers = [];
  List<RoomDTO> _rooms = [];

  Future<void> getAllGroups() async {
    final UniversityDTO? university = await _onboardingRepository.getUniversityFromCache();

    final EduProgramDTO? educationalProgram = await _onboardingRepository.getEduProgramFromCache();
    // log('${university?.code}');
    if (university != null) {
      final result = await _repository.getAllGroups(university.code!, educationalProgram!.id);

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
    final UniversityDTO? university = await _onboardingRepository.getUniversityFromCache();
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

  Future<void> getAllRooms() async {
    final UniversityDTO? university = await _onboardingRepository.getUniversityFromCache();
    if (university != null) {
      final result = await _repository.getAllRooms(university.code!);

      result.when(
        success: (rooms) {
          _rooms = rooms;
          emit(SearchState.loadedRoomsState(rooms: _rooms));
        },
        failure: (error) => emit(
          SearchState.errorState(
            message: error.msg ?? "Ошибка при получении universityDTOFromCahche",
          ),
        ),
      );
    }
  }

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
  const factory SearchState.loadedRoomsState({
    required List<RoomDTO> rooms,
  }) = _LoadedRoomsState;
  const factory SearchState.errorState({
    required String message,
  }) = _ErrorState;
}
