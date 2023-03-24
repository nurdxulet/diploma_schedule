// ignore_for_file: deprecated_member_use

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:schedule/core/extension/src/build_context.dart';
import 'package:schedule/core/resources/assets.gen.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/core/widget/bottom_sheet.dart';
import 'package:schedule/features/app/enum/app_language.dart';
import 'package:schedule/features/app/provider/theme_provider.dart';
import 'package:schedule/features/app/router/app_router.dart';
import 'package:schedule/features/app/widgets/custom/custom_buttons/custom_button.dart';
import 'package:schedule/features/settings/widgets/settings_button.dart';
import 'package:schedule/features/settings/widgets/settings_button_subtitle.dart';
import 'package:schedule/features/settings/widgets/switch_button.dart';
import 'package:schedule/features/settings/widgets/theme_button.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late bool notification = true;

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
    // final themeProvider = Provider.of<ThemeProvider>(context);
    // final bool darkMode = themeProvider.isDarkMode;
    // final bool lightMode = themeProvider.isLightMode;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 30),
            SettingsButtonSubtitle(
              str: context.localized.appLanguage,
              subtitle: context.currentLocale == AppLanguage.ru
                  ? context.localized.russian
                  : context.currentLocale == AppLanguage.kk
                      ? context.localized.kazakh
                      : context.localized.english,
              icon: SvgPicture.asset(
                Assets.icons.languageIcon.path,
                color: AppColors.kMainOrange,
              ),
              onPressed: () => context.router.push(
                const LanguageRoute(),
              ),
            ),
            const SizedBox(height: 20),
            SettingsButtonSubtitle(
              str: context.localized.design,
              //TODO DARK THEME
              subtitle: context.localized.light,
              icon: SvgPicture.asset(
                Assets.icons.refreshIcon.path,
                color: AppColors.kMainOrange,
              ),
              // onPressed: () => context.router.push(const ThemeScreenRoute()),

              onPressed: () {
                bottomSheet(
                  SizedBox(
                    height: 170,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          ThemeButton(
                            txt: context.localized.light,
                            icon: Icons.sunny,
                            enabled: themeLight,
                            onPressed: () {
                              setState(() {
                                if (themeLight) {
                                  themeDark = true;
                                  themeLight = false;
                                } else {
                                  themeLight = true;
                                  themeDark = false;
                                }
                              });
                              // final provider = Provider.of<ThemeProvider>(context, listen: false);
                              // provider.toggleTheme(theme);
                            },
                          ),
                          const SizedBox(height: 20),
                          ThemeButton(
                            txt: context.localized.dark,
                            icon: Icons.nightlight_round_sharp,
                            enabled: themeDark,
                            onPressed: () {
                              setState(() {
                                if (themeDark) {
                                  themeLight = true;
                                  themeDark = false;
                                } else {
                                  themeLight = false;
                                  themeDark = true;
                                }
                              });
                              // final provider = Provider.of<ThemeProvider>(context, listen: false);
                              // provider.toggleTheme(theme);
                            },
                          ),
                          const Spacer(),
                          CustomButton(
                            body: Text(
                              context.localized.quit,
                              style: AppTextStyles.m15w500White,
                            ),
                            onClick: () => Navigator.pop(context),
                          )
                        ],
                      ),
                    ),
                  ),
                  isDismissible: true,
                  context,
                );
              },
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                SvgPicture.asset(
                  Assets.icons.notificationIcon.path,
                  color: AppColors.kMainOrange,
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
            const SizedBox(height: 20),
            SettingsButton(
              icon: SvgPicture.asset(
                Assets.icons.exclamationIcon.path,
                color: AppColors.kMainOrange,
              ),
              str: context.localized.termsOfUse,
              onTap: () {},
            ),
            const Spacer(),
            const SizedBox(height: 20),
          ],
        ),
      )),
    );
  }
}
