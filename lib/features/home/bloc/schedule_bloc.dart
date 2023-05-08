import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule/features/home/data/models/schedule_model_dto.dart';
import 'package:schedule/features/home/repositories/news_repository.dart';

part 'schedule_event.dart';
part 'schedule_state.dart';

class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  final ScheduleRemoteRepository scheduleRepository;
  ScheduleBloc(this.scheduleRepository) : super(ScheduleInitial()) {
    on<LoadSchedule>((event, emit) async {
      emit(ScheduleLoading());
      try {
        List<ScheduleDTO?> scheduleList = await scheduleRepository.getSchedule(event.id);

        scheduleList.map((e) => print(e)).toList();
        emit(ScheduleSucces(scheduleList));
      } on DioError catch (e) {
        emit(ScheduleFailure(e.message));
      }
    });
  }
}
