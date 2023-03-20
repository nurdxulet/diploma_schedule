import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/features/app/enum/app_language.dart';

part 'base_appbar_cubit.freezed.dart';

class BaseAppbarCubit extends Cubit<BaseAppbarState> {
  BaseAppbarCubit() : super(const BaseAppbarState.initial());

  void init({
    required AppLanguage language,
    // CityDTO? city,
    // CurrencyDTO? currency,
  }) {
    emit(
      BaseAppbarState.loaded(
        selectedLanguage: language,
        // selectedCity: city,
        // selectedCurrency: currency,
      ),
    );
  }

  void setSelectedLanguage({
    AppLanguage? language,
    // CityDTO? city,
    // CurrencyDTO? currency,
  }) {
    state.whenOrNull(
      loaded: (selectedLanguage) {
        emit(
          BaseAppbarState.loaded(
            selectedLanguage: language ?? selectedLanguage,
            // selectedCity: city ?? selectedCity,
            // selectedCurrency: currency ?? selectedCurrency,
          ),
        );
      },
    );
  }

    void whenChangeRole() {
    state.whenOrNull(
      loaded: (selectedLanguage ) {
        emit(
          BaseAppbarState.loaded(
            selectedLanguage:  selectedLanguage,
            // selectedCity: null,
            // selectedCurrency: selectedCurrency,
          ),
        );
      },
    );
  }
}

@freezed
class BaseAppbarState with _$BaseAppbarState {
  const factory BaseAppbarState.initial() = _InitialState;

  const factory BaseAppbarState.loading() = _LoadingState;

  const factory BaseAppbarState.loaded({
    required AppLanguage selectedLanguage,
    // required CityDTO? selectedCity,
    // required CurrencyDTO? selectedCurrency,
  }) = _LoadedState;

  const factory BaseAppbarState.error({
    required String message,
  }) = _ErrorState;
}
