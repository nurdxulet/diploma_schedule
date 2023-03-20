import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/app/router/app_router.dart';
import 'package:schedule/features/app/view/app_router_builder.dart';
import 'package:schedule/l10n/l10n.dart';
import 'package:schedule/settings/widget/scope/settings_scope.dart';

class AppConfiguration extends StatelessWidget {
  const AppConfiguration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final themeMode = SettingsScope.themeModeOf(context, listen: true);
    final locale = SettingsScope.localeOf(context, listen: true);

    return AppRouterBuilder(
      createRouter: (context) => AppRouter(),
      builder: (context, parser, delegate) => MaterialApp.router(
        routeInformationParser: parser,
        routerDelegate: delegate,
        debugShowCheckedModeBanner: false,
        // onGenerateTitle: (context) => context.localized.appTitle,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        // theme: ThemeData.light(),
        theme: AppTheme.light,
        locale: locale,
        // darkTheme: ThemeData.dark(),
        // themeMode: themeMode,
      ),
    );
  }
}
