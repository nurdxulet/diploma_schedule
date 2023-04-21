import 'package:flutter/material.dart';
import 'package:schedule/core/extension/src/build_context.dart';
import 'package:schedule/features/app/enum/app_language.dart';
import 'package:schedule/features/settings/widgets/radio_button.dart';
import 'package:schedule/settings/widget/scope/settings_scope.dart';

class SetLanguageWidget extends StatefulWidget {
  const SetLanguageWidget({super.key});

  @override
  State<SetLanguageWidget> createState() => _SetLanguageWidgetState();
}

class _SetLanguageWidgetState extends State<SetLanguageWidget> {
  late int choiceLanguage;
  void changeLanguage(int? value) {
    setState(() {
      choiceLanguage = value!;
    });
  }

  late AppLanguage value;
  @override
  void initState() {
    super.initState();
    value = context.currentLocale;
    if (context.currentLocale == AppLanguage.ru) {
      setState(() {
        choiceLanguage = 1;
      });
    } else if (context.currentLocale == AppLanguage.kk) {
      setState(() {
        choiceLanguage = 2;
      });
    } else if (context.currentLocale == AppLanguage.en) {
      setState(() {
        choiceLanguage = 3;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioButton(
          value: 1,
          txt: '🇷🇺  Русскии язык',
          groupValue: choiceLanguage,
          onSelected: () {
            value = AppLanguage.kk;
            context.dio.options.headers['Content-Language'] = AppLanguage.ru.localeCode;
            SettingsScope.setLocale(context, AppLanguage.ru);
            setState(() {});
          },
          onChanged: changeLanguage,
        ),
        RadioButton(
          value: 2,
          txt: '🇰🇿  Қазақ тілі',
          groupValue: choiceLanguage,
          onSelected: () {
            value = AppLanguage.kk;
            context.dio.options.headers['Content-Language'] = AppLanguage.kk.localeCode;
            SettingsScope.setLocale(context, AppLanguage.kk);
            setState(() {});
          },
          onChanged: changeLanguage,
        ),
        RadioButton(
          value: 3,
          txt: '🇬🇧  English',
          groupValue: choiceLanguage,
          onSelected: () {
            value = AppLanguage.en;
            context.dio.options.headers['Content-Language'] = AppLanguage.kk.localeCode;
            SettingsScope.setLocale(context, AppLanguage.en);
            setState(() {});
          },
          onChanged: changeLanguage,
        ),
      ],
    );
  }
}
