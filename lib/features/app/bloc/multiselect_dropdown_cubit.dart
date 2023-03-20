import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multiselect_dropdown_cubit.freezed.dart';

class MultiselectDropdownCubit extends Cubit<MultiselectDropdownState> { 

  MultiselectDropdownCubit()
      : super(const MultiselectDropdownState.initialState());

  Future<void> clearDropdown() async {
    emit(const MultiselectDropdownState.clear());
    emit(const MultiselectDropdownState.initialState());
  }
}

@freezed
class MultiselectDropdownState with _$MultiselectDropdownState {
  const factory MultiselectDropdownState.initialState() = _InitialPage;

  const factory MultiselectDropdownState.clear() = _ClearState;
}
