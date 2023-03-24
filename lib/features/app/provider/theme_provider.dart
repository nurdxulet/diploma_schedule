import 'package:flutter/material.dart';
import 'package:schedule/core/resources/resources.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  bool get isLightMode => themeMode == ThemeMode.light;

  // ignore: avoid_positional_boolean_parameters
  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  final darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.darkMode,
    colorScheme: const ColorScheme.dark(),
    primaryColor: AppColors.kWhite,
    dividerColor: AppColors.kWhite,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkMode,
      iconTheme: IconThemeData(color: AppColors.kGrey2),
    ),
  );

  final lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.kWhite,
    colorScheme: const ColorScheme.light(),
    primaryColor: AppColors.kBlack,
    dividerColor: AppColors.kWhite,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.kWhite,
      iconTheme: IconThemeData(color: AppColors.kGrey2),
    ),
  );
}
