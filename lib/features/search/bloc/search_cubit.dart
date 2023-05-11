import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/features/home/data/models/schedule_model_dto.dart';
import 'package:schedule/features/search/repository/search_repository.dart';

part 'search_cubit.freezed.dart';

class SearchCubit extends Cubit<SearchState> {
  final ISearchRepository _repository;
  SearchCubit(this._repository) : super(const SearchState.initialState());

  Future<void> getGroupSchedule(String id) async {
    emit(const SearchState.loadingState());
    final result = await _repository.getGroupSchedule(id);
    result.when(
      success: (schedules) => emit(SearchState.loadedState(schedules: schedules)),
      failure: (error) => emit(
        SearchState.errorState(
          message: error.msg ?? "Ошибка при получении списка вопросов",
        ),
      ),
    );
  }

  Future<void> getSubjectSchedule(String id) async {
    emit(const SearchState.loadingState());
    final result = await _repository.getSubjectSchedule(id);
    result.when(
      success: (schedules) => emit(SearchState.loadedState(schedules: schedules)),
      failure: (error) => emit(
        SearchState.errorState(
          message: error.msg ?? "Ошибка при получении списка вопросов",
        ),
      ),
    );
  }

  Future<void> getTeacherSchedule(String id) async {
    emit(const SearchState.loadingState());
    final result = await _repository.getTeacherSchedule(id);
    result.when(
      success: (schedules) => emit(SearchState.loadedState(schedules: schedules)),
      failure: (error) => emit(
        SearchState.errorState(
          message: error.msg ?? "Ошибка при получении списка вопросов",
        ),
      ),
    );
  }

  void toInitital() {
    emit(const SearchState.loadingState());
  }
}

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initialState() = _InitialState;
  const factory SearchState.loadingState() = _LoadingState;
  const factory SearchState.loadedState({
    required List<ScheduleDTO> schedules,
  }) = _LoadedState;
  const factory SearchState.errorState({
    required String message,
  }) = _ErrorState;
}
