import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
// import 'package:flutter_gen/gen_l10n/app_localizations.g.dart';
// import 'package:metry/core/database/drift/app_database.dart';
// import 'package:metry/core/model/dependencies_storage.dart';
// import 'package:metry/core/model/repository_storage.dart';
// import 'package:metry/core/widget/dependencies_scope.dart';
// import 'package:metry/core/widget/repository_scope.dart';
// import 'package:metry/features/app/bloc/app_bloc.dart';
// import 'package:metry/features/app/bloc/app_role_bloc.dart';
// import 'package:metry/features/app/enum/app_language.dart';
// import 'package:metry/features/main/model/city_dto.dart';
// import 'package:metry/features/main/model/currency_dto.dart';
// import 'package:metry/features/profile/bloc/profile_bloc.dart';
// import 'package:metry/features/settings/widget/scope/settings_scope.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:schedule/core/database/drift/app_database.dart';
import 'package:schedule/core/model/dependencies_storage.dart';
import 'package:schedule/core/model/repository_storage.dart';
import 'package:schedule/core/widget/dependencies_scope.dart';
import 'package:schedule/core/widget/repository_scope.dart';
import 'package:schedule/features/app/bloc/app_bloc.dart';
import 'package:schedule/features/app/enum/app_language.dart';
import 'package:schedule/l10n/l10n.dart';
import 'package:schedule/settings/widget/scope/settings_scope.dart';
import 'package:shared_preferences/shared_preferences.dart';

extension BuildContextX on BuildContext {
  // IEnvironmentStorage get environment => EnvironmentScope.of(this);
  IDependenciesStorage get dependencies => DependenciesScope.of(this);
  Dio get dio => dependencies.dio;
  AppDatabase get database => dependencies.database;
  SharedPreferences get sharedPreferences => dependencies.sharedPreferences;
  PackageInfo get packageInfo => dependencies.packageInfo;

  IRepositoryStorage get repository => RepositoryScope.of(this);

  // ignore: avoid-non-null-assertion
  /// Перевести через контекст
  AppLocalizations get localized => AppLocalizations.of(this);

  /// Выбранный язык
  AppLanguage get currentLocale => SettingsScope.appLanguageOf(this);

  /// Поддерживаемые языки
  List<Locale> get supportedLocales => AppLocalizations.supportedLocales;

  // /// Выбранный город
  // CityDTO? get currentCity => SettingsScope.cityOf(this);

  // /// Выбранная валюта
  // CurrencyDTO? get currentCurrency => SettingsScope.currencyOf(this);

  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Size get screenSize => mediaQuery.size;

  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;

  AppBLoC get appBloc => BlocProvider.of<AppBLoC>(this);
  // ProfileBLoC get profileBloc => BlocProvider.of<ProfileBLoC>(this);
}
