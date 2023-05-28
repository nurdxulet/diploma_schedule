import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pure/pure.dart';
import 'package:schedule/core/extension/src/build_context.dart';
import 'package:schedule/core/widget/bloc_scope.dart';
import 'package:schedule/features/app/bloc/app_bloc.dart';
import 'package:schedule/features/app/bloc/base_appbar_cubit.dart';
import 'package:schedule/features/app/bloc/base_bloc.dart';
import 'package:schedule/features/app/enum/app_language.dart';
import 'package:schedule/settings/bloc/settings_bloc.dart';
import 'package:schedule/settings/enum/app_theme.dart';

AppTheme _theme(SettingsState state) => state.data.theme;

ThemeMode _themeToThemeMode(AppTheme theme) => theme.when(
      light: () => ThemeMode.light,
      dark: () => ThemeMode.dark,
      system: () => ThemeMode.system,
    );

AppLanguage _locale(SettingsState state) => state.data.locale;

Locale _localeToLocale(AppLanguage locale) => locale.when(
      kk: () => const Locale('kk'),
      ru: () => const Locale('ru'),
      en: () => const Locale('en'),
    );

// CityDTO? _city(SettingsState state) => state.data.city;

// CurrencyDTO? _currency(SettingsState state) => state.data.currency;

class SettingsScope extends StatelessWidget {
  final Widget child;

  const SettingsScope({
    required this.child,
    super.key,
  });

  static const BlocScope<SettingsEvent, SettingsState, SettingsBLoC> _scope = BlocScope();

  // --- Data --- //

  static ScopeData<ThemeMode> get themeModeOf => _themeToThemeMode.dot(_theme).pipe(_scope.select);

  static ScopeData<AppTheme> get appThemeOf => _scope.select(_theme);

  static ScopeData<Locale> get localeOf => _localeToLocale.dot(_locale).pipe(_scope.select);

  static ScopeData<AppLanguage> get appLanguageOf => _scope.select(_locale);

  // static ScopeData<CityDTO?> get cityOf => _scope.select(_city);

  // static ScopeData<CurrencyDTO?> get currencyOf => _scope.select(_currency);

  // --- Methods --- //

  static UnaryScopeMethod<AppTheme> get setTheme => _scope.unary(
        (context, theme) => SettingsEvent.setTheme(theme: theme),
      );

  static UnaryScopeMethod<AppLanguage> get setLocale => _scope.unary(
        (context, locale) => SettingsEvent.setLocale(locale: locale),
      );

  // static UnaryScopeMethod<CityDTO?> get setCity => _scope.unary(
  //       (context, city) => SettingsEvent.setCity(city: city),
  //     );

  // static UnaryScopeMethod<CurrencyDTO> get setCurrency => _scope.unary(
  //       (context, currency) => SettingsEvent.setCurrency(currency: currency),
  //     );

  // --- Build --- //

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<SettingsBLoC>(
            create: (context) => SettingsBLoC(
              settingsRepository: context.repository.settings,
            ),
          ),
          BlocProvider<AppBLoC>(
            create: (context) => AppBLoC(
              // context.repository.authRepository,
              context.repository.onboardingRepository,
              context.repository.authRepository,
            ),
          ),
          // BlocProvider<AppRoleBloc>(
          //   create: (context) => AppRoleBloc(),
          // ),
          BlocProvider<BaseBLoC>(
            create: (context) => BaseBLoC(),
          ),
          // BlocProvider<BaseDrawerCubit>(
          //   create: (_) => BaseDrawerCubit(),
          // ),
          // BlocProvider<ProfileBLoC>(
          //   create: (_) => ProfileBLoC(
          //     authRepository: context.repository.authRepository,
          //   ),
          // ),
          BlocProvider<BaseAppbarCubit>(
            create: (_) => BaseAppbarCubit(),
          ),
          // BlocProvider<CityCubit>(
          //   create: (_) => CityCubit(
          //     context.repository.otherListRepository,
          //   ),
          // ),
          // BlocProvider<CurrenciesCubit>(
          //   create: (_) => CurrenciesCubit(
          //     context.repository.otherListRepository,
          //   ),
          // ),
          // BlocProvider<NewAdvertCubit>(
          //   create: (_) => NewAdvertCubit(
          //     context.repository.adRepository,
          //   ),
          // ),
          // BlocProvider<EstateCountCubit>(
          //   create: (context) => EstateCountCubit(context.repository.mainRepository),
          // ),
          // BlocProvider<NewsCubit>(
          //   create: (context) => NewsCubit(context.repository.companyRepository),
          // ),
          // BlocProvider<JobsCubit>(
          //   create: (context) => JobsCubit(context.repository.companyRepository),
          // ),
          // BlocProvider<DetailNewsCubit>(
          //   create: (context) => DetailNewsCubit(context.repository.companyRepository),
          // ),
          // BlocProvider<DetailJobsCubit>(
          //   create: (context) => DetailJobsCubit(context.repository.companyRepository),
          // ),
          // BlocProvider<CategoryCubit>(
          //   create: (context) => CategoryCubit(context.repository.mainRepository),
          // ),
          // BlocProvider<RCCategoryCubit>(
          //   create: (context) => RCCategoryCubit(context.repository.mainRepository),
          // ),
          // BlocProvider<MultiselectDropdownCubit>(
          //   create: (context) => MultiselectDropdownCubit(),
          // ),
          // BlocProvider<FavoriteCubit>(
          //   create: (context) => FavoriteCubit(context.repository.mainRepository),
          // )
        ],
        child: child,
      );
}
