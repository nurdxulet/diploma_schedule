// import 'dart:convert';
// import 'dart:developer';

// import 'package:metry/core/common/shared_keys.dart';
// import 'package:metry/core/error/excepteion.dart';
// import 'package:metry/features/auth/model/user_dto.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// abstract class AuthLocalDs {
//   Future<void> saveUserToCache({
//     required UserDTO user,
//   });

//   UserDTO getUserFromCache();

//   UserDTO? getUserFromCacheNull();

//   Future<void> removeUserFromCache();

//   Future<void> saveDeviceToken({
//     required String deviceToken,
//   });

//   String getDeviceToken();

//   Future<void> saveLocale({
//     required String locale,
//   });

//   String getLocale();
// }

// class AuthLocalDsImpl extends AuthLocalDs {
//   final SharedPreferences sharedPreferences;

//   AuthLocalDsImpl({required this.sharedPreferences});

//   @override
//   UserDTO getUserFromCache() {
//     try {
//       final user = sharedPreferences.get(SharedKeys.USER_FROM_CACHE);
//       if (user != null) {
//         return UserDTO.fromJson(
//           jsonDecode(user.toString()) as Map<String, dynamic>,
//         );
//       } else {
//         throw CacheException(message: 'В кэше нет запрашиваемые данные');
//       }
//     } catch (e) {
//       log('AuthLocalDSImpl:: ${e.runtimeType == CacheException ? (e as CacheException).message : e}');
//       throw CacheException(message: 'В кэше нет запрашиваемые данные');
//     }
//   }

//   @override
//   UserDTO? getUserFromCacheNull() {
//     try {
//       final user = sharedPreferences.get(SharedKeys.USER_FROM_CACHE);
//       if (user != null) {
//         return UserDTO.fromJson(
//           jsonDecode(user.toString()) as Map<String, dynamic>,
//         );
//       }
//       return null;
//     } catch (e) {
//       log('AuthLocalDSImpl getUserFromCacheNull:: $e');
//       throw CacheException(message: 'В кэше нет запрашиваемые данные');
//     }
//   }

//   @override
//   Future<void> saveUserToCache({
//     required UserDTO user,
//   }) async {
//     sharedPreferences.setString(SharedKeys.USER_FROM_CACHE, jsonEncode(user.toJson()));
//   }

//   @override
//   Future<void> removeUserFromCache() async {
//     sharedPreferences.remove(SharedKeys.USER_FROM_CACHE);
//   }

//   @override
//   String getDeviceToken() {
//     try {
//       final String? deviceToken = sharedPreferences.getString(SharedKeys.DEVICE_TOKEN);
//       if (deviceToken == null) {
//         log('##### getDeviceToken::: Девайс токен не был найден в кэше');
//         throw CacheException(message: 'Девайс токен не был найден в кэше');
//       }
//       return deviceToken;
//     } catch (e) {
//       log('##### getDeviceToken::: $e Девайс токен не был найден в кэше');
//       throw CacheException(message: 'Девайс токен не был найден в кэше');
//     }
//   }

//   @override
//   Future<void> saveDeviceToken({
//     required String deviceToken,
//   }) async {
//     await sharedPreferences.setString(SharedKeys.DEVICE_TOKEN, deviceToken);
//   }

//   @override
//   String getLocale() {
//     try {
//       final String? locale = sharedPreferences.getString(SharedKeys.APP_LOCALE);
//       if (locale == null) {
//         return 'ru'; // default locale
//       }
//       return locale;
//     } catch (e) {
//       log('##### getLocale::: $e AppLocale не был найден в кэше');
//       throw CacheException(message: 'AppLocale не был найден в кэше');
//     }
//   }

//   @override
//   Future<void> saveLocale({required String locale}) async {
//     await sharedPreferences.setString(SharedKeys.APP_LOCALE, locale);
//   }
// }
