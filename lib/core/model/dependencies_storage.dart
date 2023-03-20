import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:schedule/core/database/drift/app_database.dart';
import 'package:schedule/core/network/dio_module.dart';
import 'package:schedule/core/network/layers/network_connectivity.dart';
import 'package:schedule/core/network/layers/network_creator.dart';
import 'package:schedule/core/network/layers/network_decoder.dart';
import 'package:schedule/core/network/layers/network_executer.dart';
import 'package:schedule/core/platform/network_info.dart';
import 'package:schedule/features/auth/database/auth_dao.dart';
import 'package:schedule/settings/database/settings_dao.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Интерфейс для имплементации зависимостей
abstract class IDependenciesStorage {
  /// External
  Dio get dio;
  AppDatabase get database;
  SharedPreferences get sharedPreferences;
  PackageInfo get packageInfo;

  /// Network
  NetworkExecuter get networkExecuter;
  NetworkConnectivity get connectionChecker;
  NetworkDecoder get decoder;
  NetworkCreator get creator;

  //Platform
  InternetConnectionChecker get internetConnectionChecker;
  NetworkInfo get networkInfo;

  void close();
}

class DependenciesStorage implements IDependenciesStorage {
  final String _databaseName;
  final SharedPreferences _sharedPreferences;
  final PackageInfo _packageInfo;

  DependenciesStorage({
    required String databaseName,
    required SharedPreferences sharedPreferences,
    required PackageInfo packageInfo,
  })  : _databaseName = databaseName,
        _sharedPreferences = sharedPreferences,
        _packageInfo = packageInfo;

  Dio? _dio;

  AppDatabase? _database;

  NetworkConnectivity? _connectionChecker;
  NetworkExecuter? _networkExecuter;
  NetworkDecoder? _decoder;
  NetworkCreator? _creator;

  InternetConnectionChecker? _internetConnectionChecker;
  NetworkInfo? _networkInfo;

  @override
  Future<void> close() async {
    _dio?.close();
    await _database?.close();
  }

  @override
  Dio get dio => _dio ??= DioModule.configureDio(
        authDao: AuthDao(sharedPreferences: sharedPreferences),
        settings: SettingsDao(sharedPreferences: sharedPreferences),
        packageInfo: packageInfo,
      );

  @override
  AppDatabase get database => _database ??= AppDatabase(name: _databaseName);

  @override
  SharedPreferences get sharedPreferences => _sharedPreferences;

  @override
  PackageInfo get packageInfo => _packageInfo;

  @override
  InternetConnectionChecker get internetConnectionChecker =>
      _internetConnectionChecker ??= InternetConnectionChecker();

  @override
  NetworkDecoder get decoder => _decoder ??= NetworkDecoder();

  @override
  NetworkCreator get creator => _creator ??= NetworkCreator();

  @override
  NetworkConnectivity get connectionChecker =>
      _connectionChecker ??= NetworkConnectivity();

  @override
  NetworkExecuter get networkExecuter => _networkExecuter ??= NetworkExecuter(
        dio: dio,
        creator: creator,
        decoder: decoder,
        networkConnectivity: connectionChecker,
      );

  @override
  NetworkInfo get networkInfo =>
      _networkInfo ??= NetworkInfoImp(internetConnectionChecker);
}
