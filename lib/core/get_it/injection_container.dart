// import 'package:get_it/get_it.dart';
// import 'package:schedule/features/home/bloc/schedule_bloc.dart';
// import 'package:schedule/features/home/data/datasource/schedule_datasource.dart';
// import 'package:schedule/features/home/repositories/schedule_remote_repository.dart';

// GetIt sl = GetIt.instance;

// Future<void> initGetIt() async {
//   sl.registerFactory<ScheduleBloc>(() => ScheduleBloc(sl()));

//   sl.registerLazySingleton<ScheduleRemoteRepository>(
//     () => ScheduleRemoteRepositoryImpl(sl()),
//   );

//   sl.registerLazySingleton<ScheduleRemoteDataSource>(
//     () => ScheduleRemoteDataSourceImpl(),
//   );

//   sl.registerFactory<ScheduleBloc>(() => ScheduleBloc(sl()));

//   sl.registerLazySingleton<ScheduleRemoteRepository>(
//     () => ScheduleRemoteRepositoryImpl(sl()),
//   );

//   sl.registerLazySingleton<ScheduleRemoteDataSource>(
//     () => ScheduleRemoteDataSourceImpl(),
//   );
// }
