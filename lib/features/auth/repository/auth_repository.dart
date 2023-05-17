import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/auth/model/user_dto.dart';
import 'package:schedule/features/search/models/university_dto.dart';

abstract class IAuthRepository {
  /// Статус аутентификации
  bool get isAuthenticated;

  Future<Result<UserDTO>> login({
    required String phone,
    required String password,
  });

  bool getOnboarding();

  Future<void> setOnboarding({
    required bool onboarding,
  });

  Future<Result<UserDTO>> getProfile();

  Future<UniversityDTO?> getUniversityFromCache();

  Future<bool> clearUser();
}
