part of 'schedule_bloc.dart';

abstract class ScheduleState {}

class ScheduleInitial extends ScheduleState {}

class ScheduleLoading extends ScheduleState {}

class ScheduleSucces extends ScheduleState {
  List<ScheduleDTO?> scheduleListList;

  ScheduleSucces(this.scheduleListList);
}

class ScheduleFailure extends ScheduleState {
  final String errorMessage;

  ScheduleFailure(this.errorMessage);
}
