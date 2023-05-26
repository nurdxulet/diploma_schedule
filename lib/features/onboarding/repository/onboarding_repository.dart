import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/onboarding/models/course_dto.dart';
import 'package:schedule/features/onboarding/models/edu_program_dto.dart';
import 'package:schedule/features/search/models/university_dto.dart';

abstract class IOnboardingRepository {
  /// Статус аутентификации

  Future<Result<UniversityDTO>> checkUniversity(String universityCode);
  Future<Result<List<EduProgramDTO>>> getEduPrograms(String universityCode);
  Future<Result<List<CourseDTO>>> getEduProgramCourses(String universityCode, String educationalProgramId);
}
