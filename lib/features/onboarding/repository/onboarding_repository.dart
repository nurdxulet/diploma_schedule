import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/onboarding/models/course_dto.dart';
import 'package:schedule/features/onboarding/models/edu_program_dto.dart';
import 'package:schedule/features/search/models/group_dto.dart';
import 'package:schedule/features/search/models/university_dto.dart';

abstract class IOnboardingRepository {
  /// Статус аутентификации
  bool get isAuthenticated;
  bool getOnboarding();
  Future<void> setOnboarding({required bool onboarding});
  Future<String> setUniInfo(
      // CourseDTO course,
      List<GroupDTO> groups,);

  Future<Result<UniversityDTO>> checkUniversity(String universityCode);
  Future<UniversityDTO?> getUniversityFromCache();
  Future<EduProgramDTO?> getEduProgramFromCache();
  Future<CourseDTO?> getCourseFromCache();
  Future<List<GroupDTO>> getGroupsFromCache();
  Future<Result<List<EduProgramDTO>>> getEduPrograms(String universityCode);
  Future<Result<List<CourseDTO>>> getEduProgramCourses(String universityCode, String educationalProgramId);
  Future<Result<List<GroupDTO>>> getGroups(
    String universityCode,
    // String educationalProgramId,
    // int courseNumber
  );
}
