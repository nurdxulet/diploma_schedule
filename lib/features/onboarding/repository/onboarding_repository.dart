import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/search/models/university_dto.dart';

abstract class IOnboardingRepository {
  /// Статус аутентификации

  Future<Result<UniversityDTO>> checkUniversity(String universityCode);
}
