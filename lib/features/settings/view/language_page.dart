// ignore_for_file: type_annotate_public_apis

import 'package:flutter/material.dart';
import 'package:schedule/core/extension/src/build_context.dart';
import 'package:schedule/features/app/widgets/custom/app_bar_with_title.dart';
import 'package:schedule/features/settings/widgets/set_language_widget.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  late int choiceLanguage;

  void changeLanguage(value) {
    setState(() {
      // choiceLanguage = value!;
    });
  }

  @override
  void initState() {
    choiceLanguage = 1;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWithTitle(title: context.localized.language),
            const SizedBox(height: 20),
            const SetLanguageWidget(),
          ],
        ),
      ),
    );
  }
}
