import 'dart:convert';

import 'package:schedule/core/network/layers/network_executer.dart';
import 'package:schedule/core/network/result.dart';
import 'package:schedule/features/auth/database/auth_dao.dart';
import 'package:schedule/features/auth/datasource/auth_remote_ds.dart';
import 'package:schedule/features/auth/model/user_dto.dart';
import 'package:schedule/features/auth/repository/auth_repository.dart';

class AuthRepositoryImpl extends IAuthRepository {
  final IAuthRemoteDS _remoteDS;
  final IAuthDao _authDao;
  final NetworkExecuter _client;

  @override
  bool get isAuthenticated => _authDao.user.value != null;

  AuthRepositoryImpl({
     required IAuthRemoteDS remoteDS,
    required IAuthDao authDao,
    required NetworkExecuter client,
  })  :
         _remoteDS = remoteDS,
        _authDao = authDao,
        _client = client;

  @override
  Future<Result<UserDTO>> login({
    required String phone,
    required String password,
  }) async {
    final Result<UserDTO> result = await _remoteDS.login(
      phone: phone,
      password: password,
    );

    result.whenOrNull(
      success: (user) {
        _authDao.user.setValue(jsonEncode(user.toJson()));
      },
    );

    return result;
  }

  @override
  bool getOnboarding() => _authDao.onboarding.value ?? false;

  @override
  Future<void> setOnboarding({required bool onboarding}) async =>
      _authDao.onboarding.setValue(onboarding);

  // @override
  // Future<Result<BasicResponse>> sendCode({required String email}) async => _client.execute(
  //       route: AuthApi.sendCode(email: email),
  //       responseType: BasicResponse(),
  //     );

  // @override
  // Future<Result<BasicResponse>> changePassword({
  //   required String email,
  //   required String password,
  // }) async =>
  //     _client.execute(
  //       route: AuthApi.resetPassword(
  //         email: email,
  //         password: password,
  //       ),
  //       responseType: BasicResponse(),
  //     );

  // @override
  // Future<Result<BasicResponse>> checkCode({
  //   required String email,
  //   required String code,
  // }) async =>
  //     _client.execute(
  //       route: AuthApi.checkCode(
  //         email: email,
  //         code: code,
  //       ),
  //       responseType: BasicResponse(),
  //     );

  // @override
  // Future<Result<UserDTO>> getProfile() async {
  //   final Result<UserDTO> result = await _remoteDS.getProfile();

  //   result.whenOrNull(
  //     success: (user) {
  //       _authDao.user.setValue(
  //         jsonEncode(
  //           user
  //               .copyWith(
  //                 accessToken: UserDTO.fromJson(
  //                   jsonDecode(_authDao.user.value!) as Map<String, dynamic>,
  //                 ).accessToken,
  //               )
  //               .toJson(),
  //         ),
  //       );
  //     },
  //   );

  //   return result;
  // }

  @override
  Future<bool> clearUser() async => _authDao.user.remove();

  @override
  Future<Result<UserDTO>> getProfile() {
    // TODO: implement getProfile
    throw UnimplementedError();
  }

  // @override
  // Future<Result<UserDTO>> login({
  //   required String email,
  //   required String password,
  // }) {
  //   // TODO: implement login
  //   throw UnimplementedError();
  // }

  // @override
  // Future<Result<BasicResponse>> logOut() async => _client.execute(
  //       route: const AuthApi.logOut(),
  //       responseType: BasicResponse(),
  //     );

  // @override
  // Future<Result<BasicResponse>> registration({
  //   required String email,
  //   required String password,
  //   required String phone,
  //   required String birthday,
  //   required String name,
  // }) async =>
  //     _client.execute(
  //       route: AuthApi.registration(
  //         email: email,
  //         password: password,
  //         phone: phone,
  //         birthday: birthday,
  //         name:name,
  //       ),
  //       responseType: BasicResponse(),
  //     );

  // @override
  // Future<Result<BasicResponse>> editProfile({
  //   required UserPayload userPayload,
  //   XFile? avatar,
  // }) async {
  //   final FormData formData = FormData.fromMap(userPayload.toJson());

  //   if (avatar != null) {
  //     formData.files.add(MapEntry('avatar', await MultipartFile.fromFile(avatar.path)));
  //   }

  //   return _client.execute(
  //     route: AuthApi.editProfile(formData: formData),
  //     responseType: BasicResponse(),
  //   );
  // }
}
