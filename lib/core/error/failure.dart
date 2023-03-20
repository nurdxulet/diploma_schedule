// // ignore_for_file: constant_identifier_names

// import 'package:equatable/equatable.dart';

// abstract class Failure extends Equatable {
//   @override
//   List<Object?> get props => [];
// }

// class ServerFailure extends Failure {
//   final String? message;
//   ServerFailure({required this.message});
// }

// class CacheFailure extends Failure {
//   final String? message;
//   CacheFailure({this.message});
// }

// const SERVER_FAILURE_MESSAGE = 'Server Failure';
// const CACHED_FAILURE_MESSAGE = 'Cache Failure';

// String mapFailureToMessage(Failure failure) {
//   if (failure is ServerFailure) {
//     return failure.message!;
//   } else if (failure is CacheFailure) {
//     return failure.message!;
//   } else {
//     return 'Unexpected Error';
//   }
// }

// String mapFailureToMessageBack(Failure failure) {
//   if (failure is ServerFailure) {
//     return failure.message!;
//   } else if (failure is CacheFailure) {
//     return failure.message!;
//   } else {
//     return 'Unexpected Error';
//   }
// }
