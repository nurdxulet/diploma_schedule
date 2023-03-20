import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/features/app/enum/app_language.dart';
import 'package:schedule/settings/enum/app_theme.dart';

part 'settings_data.freezed.dart';

@freezed
class SettingsData with _$SettingsData {
  factory SettingsData({
    required AppTheme theme,
    required AppLanguage locale,
    // CityDTO? city,
    // CurrencyDTO? currency,
  }) = _SettingsData;
}
