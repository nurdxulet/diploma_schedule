// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:schedule/features/home/data/models/schedule_model_dto.dart';
// import 'package:schedule/features/search/models/group_dto.dart';
// import 'package:schedule/features/search/models/teacher_dto.dart';
// import 'package:schedule/features/search/repository/search_repository.dart';

// part 'search_cubit.freezed.dart';

// class SearchCubit extends Cubit<SearchState> {
//   final ISearchRepository _repository;
//   SearchCubit(this._repository) : super(const SearchState.initialState());

//   Future<void> getAllGroups(dynamic universityId) async {
//     emit(const SearchState.loadingState());
//     final result = await _repository.getAllGroups(universityId);
//     result.when(
//       success: (schedules) =>
//           emit(SearchState.loadedState(schedules: schedules)),
//       failure: (error) => emit(
//         SearchState.errorState(
//           message: error.msg ?? "Ошибка при получении списка груп",
//         ),
//       ),
//     );
//   }

//   Future<void> getAllUniversities() async {
//     emit(const SearchState.loadingState());
//     final result = await _repository.getAllUniversities();
//     result.when(
//       success: (universities) =>
//           emit(SearchState.loadedUniversitiesState(universities: universities)),
//       failure: (error) => emit(
//         SearchState.errorState(
//           message: error.msg ?? "Ошибка при получении списка вопросов",
//         ),
//       ),
//     );
//   }

//   Future<void> getAllTeachers(dynamic universityId) async {
//     emit(const SearchState.loadingState());
//     final result = await _repository.getAllTeachers(universityId);
//     result.when(
//       success: (teachers) =>
//           emit(SearchState.loadedTeachersState(teachers: teachers)),
//       failure: (error) => emit(
//         SearchState.errorState(
//           message: error.msg ?? "Ошибка при получении списка вопросов",
//         ),
//       ),
//     );
//   }

//   void toInitital() {
//     emit(const SearchState.loadingState());
//   }
// }

// @freezed
// class SearchState with _$SearchState {
//   const factory SearchState.initialState() = _InitialState;
//   const factory SearchState.loadingState() = _LoadingState;
//   const factory SearchState.loadedGroupsState({
//     required List<GroupDTO> groups,
//   }) = _LoadedGroupsState;
//   const factory SearchState.loadedUniversitiesState({
//     required List<UniversityDTO> universities,
//   }) = _LoadedGroupsState;
//   const factory SearchState.loadedTeachersState({
//     required List<TeacherDTO> teachers,
//   }) = _LoadedGroupsState;
//   const factory SearchState.errorState({
//     required String message,
//   }) = _ErrorState;
// }
