part of 'schedule_bloc.dart';

abstract class ScheduleEvent {}

class LoadSchedule extends ScheduleEvent {
  String id;
  LoadSchedule({required this.id});
}
