import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/features/onboarding/repository/onboarding_repository.dart';
import 'package:schedule/features/search/models/group_dto.dart';

part 'notification_cubit.freezed.dart';

class NotificationCubit extends Cubit<NotificationState> {
  final IOnboardingRepository _repository;
  NotificationCubit(this._repository) : super(const NotificationState.initialState());

  Future<void> checkUniversity(String universityCode) async {
    emit(const NotificationState.loadingState());
    String? token = await FirebaseMessaging.instance.getToken();
    final List<GroupDTO> groups = await _repository.getGroupsFromCache();
    final result = await _repository.turnOnNotifications(token!, groups);
    result.when(
      success: (notificationData) => emit(NotificationState.loadedState(notificationData: notificationData)),
      failure: (error) => emit(
        NotificationState.errorState(
          message: error.msg ?? "Ошибка при получении списка вопросов",
        ),
      ),
    );
  }

  void toInitital() {
    emit(const NotificationState.loadingState());
  }
}

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initialState() = _InitialState;
  const factory NotificationState.loadingState() = _LoadingState;
  const factory NotificationState.loadedState({
    required Map<String, dynamic> notificationData,
  }) = _LoadedState;
  const factory NotificationState.errorState({
    required String message,
  }) = _ErrorState;
}
