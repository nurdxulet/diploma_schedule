// ignore_for_file: deprecated_member_use, avoid_positional_boolean_parameters

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schedule/core/extension/src/build_context.dart';
import 'package:schedule/core/resources/assets.gen.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/app/bloc/app_bloc.dart';
import 'package:schedule/features/app/enum/app_language.dart';
import 'package:schedule/features/app/router/app_router.dart';
import 'package:schedule/features/app/widgets/custom/custom_snackbars.dart';
import 'package:schedule/features/settings/bloc/exit_cubit.dart';
import 'package:schedule/features/settings/widgets/settings_button.dart';
import 'package:schedule/features/settings/widgets/settings_button_subtitle.dart';
import 'package:schedule/features/settings/widgets/switch_button.dart';

class SettingsPage extends StatefulWidget with AutoRouteWrapper {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => ExitCubit(context.repository.homeRepository, context.repository.onboardingRepository),
      child: this,
    );
  }
}

class _SettingsPageState extends State<SettingsPage> {
  late bool notification = false;

  void notificationOff(bool value) {
    setState(() {
      notification = value;
    });
  }

  @override
  void initState() {
    notification = true;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  bool themeDark = false;
  bool themeLight = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ).copyWith(top: 8, bottom: 14),
              child: Text(
                context.localized.settings,
                style: AppTextStyles.m24w600,
              ),
            ),
            SettingsButtonSubtitle(
              str: context.localized.appLanguage,
              subtitle: context.currentLocale == AppLanguage.ru
                  ? context.localized.russian
                  : context.currentLocale == AppLanguage.kk
                      ? context.localized.kazakh
                      : context.localized.english,
              icon: SvgPicture.asset(
                Assets.icons.languageIcon.path,
                color: AppColors.kPrimary,
                height: 25,
              ),
              onPressed: () => context.router.push(
                const LanguageRoute(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
              child: Row(
                children: [
                  SizedBox(
                    height: 25,
                    width: 25,
                    child: SvgPicture.asset(
                      Assets.icons.notificationIcon.path,
                      color: AppColors.kPrimary,
                      height: 25,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Text(
                    context.localized.notifications,
                    style: AppTextStyles.m16w500
                        .copyWith(color: Theme.of(context).primaryColor, fontWeight: FontWeight.normal),
                  ),
                  const Spacer(),
                  SwitchButton(
                    notificationOn: notification,
                    onChanged: notificationOff,
                  ),
                ],
              ),
            ),
            SettingsButton(
              icon: SvgPicture.asset(
                Assets.icons.exclamationIcon.path,
                color: AppColors.kPrimary,
                height: 25,
              ),
              str: context.localized.termsOfUse,
              onTap: () {},
            ),
            BlocListener<ExitCubit, ExitState>(
              listener: (context, state) {
                state.whenOrNull(
                  errorState: (message) => buildErrorCustomSnackBar(context, message),
                  loadedState: (result) => BlocProvider.of<AppBLoC>(context).add(const AppEvent.exiting()),
                );
              },
              child: SettingsButton(
                icon: SvgPicture.asset(
                  Assets.icons.icUniversity.path,
                  color: AppColors.kPrimary,
                  height: 25,
                ),
                str: context.localized.resetEducationalInstitution,
                onTap: () {
                  BlocProvider.of<ExitCubit>(context).removeAllFromShared();
                },
              ),
            ),
            const Spacer(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
