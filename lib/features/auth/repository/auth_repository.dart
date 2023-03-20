import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/auth/model/user_dto.dart';

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

  // // RESET password
  // Future<Result<BasicResponse>> sendCode({
  //   required String email,
  // });

  // // RESET password
  // Future<Result<BasicResponse>> checkCode({
  //   required String email,
  //   required String code,
  // });

  // RESET password
  // Future<Result<BasicResponse>> changePassword({
  //   required String email,
  //   required String password,
  // });

  Future<Result<UserDTO>> getProfile();

  Future<bool> clearUser();

  // // Log out api
  // Future<Result<BasicResponse>> logOut();

  // Future<Result<BasicResponse>> registration({
  //   required String email,
  //   required String password,
  //   required String phone,
  //   required String birthday,
  //   required String name,
  // });

  // Future<Result<BasicResponse>> editProfile({
  //   required UserPayload userPayload,
  //   XFile? avatar,
  // });
}
