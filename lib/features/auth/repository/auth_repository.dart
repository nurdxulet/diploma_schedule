import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/auth/model/user_dto.dart';
import 'package:schedule/features/onboarding/models/edu_program_dto.dart';
import 'package:schedule/features/search/models/university_dto.dart';

abstract class IAuthRepository {
  /// Статус аутентификации
  bool get isAuthenticated;

  Future<Result<UniversityDTO>> login({
    required String universityCode,
  });

  bool getOnboarding();

  Future<void> setOnboarding({
    required bool onboarding,
  });

  Future<Result<UserDTO>> getProfile();

  Future<UniversityDTO?> getUniversityFromCache();

  Future<EduProgramDTO?> getEduProgramFromChache();

  Future<bool> clearUser();
}
