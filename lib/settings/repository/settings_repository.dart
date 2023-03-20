
import 'package:pure/pure.dart';
import 'package:schedule/features/app/enum/app_language.dart';
import 'package:schedule/settings/database/settings_dao.dart';
import 'package:schedule/settings/enum/app_theme.dart';
import 'package:schedule/settings/model/settings_data.dart';

abstract class ISettingsRepository {
  SettingsData currentData();

  Future<void> setTheme(AppTheme value);

  Future<void> setLocale(AppLanguage locale);

  // Future<void> setCity(CityDTO? city);

  // CityDTO? getCity();

  // Future<void> setCurrency(CurrencyDTO currency);

  // CurrencyDTO? getCurrency();
}

class SettingsRepository implements ISettingsRepository {
  final ISettingsDao _settingsDao;

  SettingsRepository({
    required ISettingsDao settingsDao,
  }) : _settingsDao = settingsDao;

  AppTheme? get _theme => AppTheme.values.byName.nullable(_settingsDao.themeMode.value);

  @override
  SettingsData currentData() => SettingsData(
        theme: _theme ?? AppTheme.system,
        locale: _getLocale(),
        // city: getCity(),
        // currency: getCurrency(),
      );

  AppLanguage _getLocale() {
    final String? str = _settingsDao.locale.value;

    return str != null ? AppLanguage.fromString(str) : AppLanguage.ru;
  }

  @override
  Future<void> setTheme(AppTheme value) async => _settingsDao.themeMode.setValue(value.name);

  @override
  Future<void> setLocale(AppLanguage locale) async => _settingsDao.locale.setValue(locale.name);

  // @override
  // Future<void> setCity(CityDTO? city) async =>
  //     city == null ? _settingsDao.currentCity.remove() : _settingsDao.currentCity.setValue(jsonEncode(city.toJson()));

  // @override
  // Future<void> setCurrency(CurrencyDTO currency) async => _settingsDao.currency.setValue(jsonEncode(currency.toJson()));

  // @override
  // CityDTO? getCity() {
  //   final String? str = _settingsDao.currentCity.value;
  //   if (str == null) return null;

  //   return CityDTO.fromJson(
  //     jsonDecode(str) as Map<String, dynamic>,
  //   );
  // }

  // @override
  // CurrencyDTO? getCurrency() {
  //   final String? str = _settingsDao.currency.value;
  //   if (str == null) return null;

  //   return CurrencyDTO.fromJson(
  //     jsonDecode(str) as Map<String, dynamic>,
  //   );
  // }
}
