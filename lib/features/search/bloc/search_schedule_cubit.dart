// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:schedule/features/home/data/models/schedule_model_dto.dart';
// import 'package:schedule/features/search/repository/search_repository.dart';

// part 'search_schedule_cubit.freezed.dart';

// class SearchDetailCubit extends Cubit<SearchDetailState> {
//   final ISearchRepository _repository;
//   SearchDetailCubit(this._repository)
//       : super(const SearchDetailState.initialState());

//   Future<void> getGroupSchedule(String id) async {
//     emit(const SearchDetailState.loadingState());
//     final result = await _repository.getGroupSchedule(id);
//     result.when(
//       success: (schedules) =>
//           emit(SearchDetailState.loadedState(schedules: schedules)),
//       failure: (error) => emit(
//         SearchDetailState.errorState(
//           message: error.msg ?? "Ошибка при получении списка вопросов",
//         ),
//       ),
//     );
//   }

//   Future<void> getSubjectSchedule(String id) async {
//     emit(const SearchDetailState.loadingState());
//     final result = await _repository.getSubjectSchedule(id);
//     result.when(
//       success: (schedules) =>
//           emit(SearchDetailState.loadedState(schedules: schedules)),
//       failure: (error) => emit(
//         SearchDetailState.errorState(
//           message: error.msg ?? "Ошибка при получении списка вопросов",
//         ),
//       ),
//     );
//   }

//   Future<void> getTeacherSchedule(String id) async {
//     emit(const SearchDetailState.loadingState());
//     final result = await _repository.getTeacherSchedule(id);
//     result.when(
//       success: (schedules) =>
//           emit(SearchDetailState.loadedState(schedules: schedules)),
//       failure: (error) => emit(
//         SearchDetailState.errorState(
//           message: error.msg ?? "Ошибка при получении списка вопросов",
//         ),
//       ),
//     );
//   }

//   void toInitital() {
//     emit(const SearchDetailState.loadingState());
//   }
// }

// @freezed
// class SearchDetailState with _$SearchDetailState {
//   const factory SearchDetailState.initialState() = _InitialState;
//   const factory SearchDetailState.loadingState() = _LoadingState;
//   const factory SearchDetailState.loadedState({
//     required List<ScheduleDTO> schedules,
//   }) = _LoadedState;
//   const factory SearchDetailState.errorState({
//     required String message,
//   }) = _ErrorState;
// }
