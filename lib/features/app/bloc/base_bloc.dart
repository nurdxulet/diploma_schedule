// ignore: unused_import
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_bloc.freezed.dart';

// ignore: unused_element
const _tag = 'AppRoleBloc';


///
/// This bloc is responsible for the state of base.dart, 
/// to be more specific, it is responsible for the state of the bottom nav bar
/// According to the application, only one instance
///
class BaseBLoC extends Bloc<BaseEvent, BaseState> {
  BaseBLoC() : super(const BaseState.initalState()) {
    on<BaseEvent>(
      (BaseEvent event, Emitter<BaseState> emit) async => event.map(
        setActiveIndex: (_SetActiveIndexEvent event) => _setActiveIndex(event, emit),
      ),
    );
  }

  void _setActiveIndex(
    _SetActiveIndexEvent event,
    Emitter<BaseState> emit,
  ) {
    emit(const BaseState.initalState());
    emit(BaseState.loadedState(index: event.index, action: event.action));
  }

  // @override
  // void onTransition(Transition<BaseEvent, BaseState> transition) {
  //   print(transition);
  //   super.onTransition(transition);
  // }
}

@freezed
class BaseEvent with _$BaseEvent {
  const factory BaseEvent.setActiveIndex({
    required int index,
    void Function()? action,
  }) = _SetActiveIndexEvent;
}

@freezed
class BaseState with _$BaseState {
  const factory BaseState.initalState() = _InitialState;
  const factory BaseState.loadedState({
    required int index,
    void Function()? action,
  }) = _LoadedState;
}
