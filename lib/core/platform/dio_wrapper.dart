// // ignore_for_file: avoid_redundant_argument_values

// // ignore: unused_import
// import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:metry/core/platform/network_helper.dart';
// import 'package:metry/features/auth/database/auth_local_ds.dart';
// import 'package:metry/features/auth/model/user_dto.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// class DioWrapper {
//   final AuthLocalDs _authLocalDS;

//   // Dio dio = Dio(BaseOptions(baseUrl: SERVER_));
//   Dio dio = Dio(
//     BaseOptions(
//       baseUrl: SERVER_,
//       headers: {
//         'Content-Language': 'ru', //default
//       },
//     ),
//   );

//   Dio get instance => dio;

//   void changeLang(String lang) {
//     dio.options.headers['Content-Language'] = lang;
//   }

//   // void path(String path) {
//   //   dio = Dio(
//   //     BaseOptions(
//   //       baseUrl: SERVER_.trim() + path.trim(),
//   //       headers: {
//   //         'Content-Language': 'ru', //default
//   //       },
//   //     ),
//   //   )..interceptors.addAll([
//   //       _KausarDioInterceptor(
//   //         _authLocalDS,
//   //       ),
//   //       // LogInterceptor(
//   //       //   request: true,
//   //       //   requestBody: true,
//   //       //   requestHeader: true,
//   //       //   responseBody: true,
//   //       //   responseHeader: false,
//   //       //   error: true,
//   //       // ),
//   //       PrettyDioLogger(
//   //         requestHeader: true,
//   //         requestBody: true,
//   //         responseBody: false,
//   //         responseHeader: false,
//   //         compact: true,
//   //       ),
//   //     ]);
//   // }

//   DioWrapper(this._authLocalDS) {
//     dio.interceptors.addAll([
//       _KausarDioInterceptor(_authLocalDS),
//       PrettyDioLogger(
//         requestHeader: true,
//         requestBody: true,
//         responseBody: true,
//         responseHeader: false,
//         compact: false,
//       ),
//       // LogInterceptor(
//       //   request: true,
//       //   requestBody: true,
//       //   requestHeader: true,
//       //   responseBody: true,
//       //   responseHeader: false,
//       //   error: true,
//       // ),
//     ]);
//   }
// }

// class _KausarDioInterceptor extends Interceptor {
//   final AuthLocalDs _authLocalDS;
//   _KausarDioInterceptor(this._authLocalDS);

//   Dio dio = Dio(BaseOptions(baseUrl: SERVER_));

//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     final UserDTO? user = _authLocalDS.getUserFromCacheNull();
//     final String locale = _authLocalDS.getLocale();
//     if (user != null && user.accessToken != null) {
//       options.headers['Authorization'] = 'Bearer ${user.accessToken}';
//     }
//     options.headers['Accept'] = "application/json";
//     options.headers['Content-Language'] = locale.replaceAll('kk', 'kz');
//     super.onRequest(options, handler);
//   }

//   // @override
//   // Future onError(
//   //   DioError err,
//   //   ErrorInterceptorHandler handler,
//   // ) async {
//   //   sl<NotAuthLogic>().statusSubject.add(err.response?.statusCode ?? 0);
//   //   if ((err.response?.statusCode ?? 0) == HttpStatus.unauthorized) {
//   //     sl<NotAuthLogic>().statusSubject.add(401);
//   //     // try {
//   //     //   // await refreshToken();
//   //     // } on DioError {
//   //     //   rethrow;
//   //     // }
//   //   } else if ((err.response?.statusCode ?? 0) == HttpStatus.unprocessableEntity) {
//   //   } else if ((err.response?.statusCode ?? 0) == HttpStatus.notFound) {
//   //     // getIt<NotFoundLogic>().statusSubject.add(404);
//   //   }
//   //   return super.onError(err, handler);
//   // }
// }
