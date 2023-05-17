import 'package:schedule/core/database/drift/app_database.dart';
import 'package:schedule/core/network/layers/network_executer.dart';
import 'package:schedule/features/auth/database/auth_dao.dart';
import 'package:schedule/features/auth/datasource/auth_remote_ds.dart';
import 'package:schedule/features/auth/repository/auth_repository.dart';
import 'package:schedule/features/auth/repository/auth_repository_impl.dart';
import 'package:schedule/features/home/data/datasource/home_remote_ds.dart';
import 'package:schedule/features/home/data/datasource/schedule_datasource.dart';
import 'package:schedule/features/home/repositories/home_repository.dart';
import 'package:schedule/features/home/repositories/home_repository_impl.dart';
import 'package:schedule/features/home/repositories/schedule_remote_repository.dart';
import 'package:schedule/features/onboarding/datasource/onboarding_remote_ds.dart';
import 'package:schedule/features/onboarding/repository/onboarding_repository.dart';
import 'package:schedule/features/onboarding/repository/onboarding_repository_impl.dart';
import 'package:schedule/features/search/datasource/search_remote_ds.dart';
import 'package:schedule/features/search/repository/search_repository.dart';
import 'package:schedule/features/search/repository/search_repository_impl.dart';
import 'package:schedule/settings/database/settings_dao.dart';
import 'package:schedule/settings/repository/settings_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IRepositoryStorage {
  ISettingsRepository get settings;

  IAuthRepository get authRepository;
  // ScheduleRemoteRepository get scheduleRepository;
  ISearchRepository get searchRepository;
  IOnboardingRepository get onboardingRepository;
  IHomeRepository get homeRepository;
  // ICompanyRepository get companyRepository;
  // IAdRepository get adRepository;
  // IOtherListRepository get otherListRepository;

  // Data sources
  IAuthRemoteDS get authRemoteDS;
  // ScheduleRemoteDataSource get scheduleRemoteDS;
  ISearchRemoteDS get searchRemoteDS;
  IOnboardingRemoteDS get onboardingRemoteDS;
  IHomeRemoteDS get homeRemoteDS;
  // CompanyRemoteDS get companyRemoteDs;
  // IAdRemoteDS get adRemoteDS;
  // IOtherListRemoteDS get otherListRemoteDS;
}

class RepositoryStorage implements IRepositoryStorage {
  // ignore: unused_field
  //nurda kosty bez ponyatiya _authDao degendi
  final IAuthDao _authDao;
  final AppDatabase _appDatabase;
  final SharedPreferences _sharedPreferences;
  final NetworkExecuter _networkExecuter;

  RepositoryStorage({
    required IAuthDao authDao,
    required AppDatabase appDatabase,
    required SharedPreferences sharedPreferences,
    required NetworkExecuter networkExecuter,
  })  : _appDatabase = appDatabase,
        _sharedPreferences = sharedPreferences,
        _networkExecuter = networkExecuter,

        //nurda kosty bez ponyatiya
        _authDao = authDao;

  ///
  /// Repositories
  ///

  @override
  ISettingsRepository get settings => SettingsRepository(
        settingsDao: SettingsDao(sharedPreferences: _sharedPreferences),
      );

  @override
  IAuthRepository get authRepository => AuthRepositoryImpl(
        remoteDS: authRemoteDS,
        authDao: AuthDao(sharedPreferences: _sharedPreferences),
        client: _networkExecuter,
      );

  @override
  ISearchRepository get searchRepository => SearchRepositoryImpl(
        remoteDS: searchRemoteDS,
      );

  @override
  IOnboardingRepository get onboardingRepository => OnboardingRepositoryImpl(
        remoteDS: onboardingRemoteDS,
        authDao: _authDao,
        //nurda kosty bez ponyatiya
      );

  @override
  IHomeRepository get homeRepository => HomeRepositoryImpl(
        remoteDS: homeRemoteDS,
        //nurda kosty bez ponyatiya
      );

  ///Remote Datasources
  @override
  // TODO: implement authRemoteDS
  IAuthRemoteDS get authRemoteDS => AuthRemoteDSImpl(
        client: _networkExecuter,
      );

  // @override
  // ScheduleRemoteRepository get scheduleRepository => ScheduleRemoteRepositoryImpl(scheduleRemoteDS);

  // @override
  // ScheduleRemoteDataSource get scheduleRemoteDS => ScheduleRemoteDataSourceImpl();

  @override
  ISearchRemoteDS get searchRemoteDS => SearchRemoteDSImpl(client: _networkExecuter);

  @override
  IOnboardingRemoteDS get onboardingRemoteDS => OnboardingRemoteDSImpl(client: _networkExecuter);

  @override
  IHomeRemoteDS get homeRemoteDS => HomeRemoteDSDSImpl(client: _networkExecuter);

  // @override
  // IEstateRepository get mainRepository => EstateRepositoryImpl(
  //       estateRemoteDS: estateRemoteDS,
  //       networkExecuter: _networkExecuter,
  //     );

  // @override
  // ICompanyRepository get companyRepository => CompanyRepositoryImpl(
  //       companyRemoteDS: companyRemoteDs,
  //       client: _networkExecuter,
  //     );

  // @override
  // IAdRepository get adRepository => AdRepositoryImpl(
  //       client: _networkExecuter,
  //       remoteDS: adRemoteDS,
  //     );

  // @override
  // IOtherListRepository get otherListRepository => OtherListRepositoryImpl(
  //       client: _networkExecuter,
  //       otherListRemoteDS: otherListRemoteDS,
  //  );

  ///
  /// Remote datasources
  ///

  // @override
  // IAuthRemoteDS get authRemoteDS => AuthRemoteDSImpl(client: _networkExecuter);

  // @override
  // AuthLocalDs get authLocalDs => AuthLocalDsImpl(sharedPreferences: _sharedPreferences);

  // @override
  // CompanyRemoteDS get companyRemoteDs => CompanyRemoteDSImpl(client: _networkExecuter);

  // @override
  // EstateRemoteDs get estateRemoteDS => EstateRemoteDsImpl(client: _networkExecuter);

  // @override
  // IAdRemoteDS get adRemoteDS => AdRemoteDSImpl(client: _networkExecuter);

  // @override
  // IOtherListRemoteDS get otherListRemoteDS => OtherListRemoteDSImpl(client: _networkExecuter);
}
