import 'package:flutter/cupertino.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

@immutable
class AsyncAppDependencies {
  final SharedPreferences sharedPreferences;
  final PackageInfo packageInfo;

  const AsyncAppDependencies({
    required this.sharedPreferences,
    required this.packageInfo,
  });

  static Future<AsyncAppDependencies> obtain() async => AsyncAppDependencies(
        sharedPreferences: await SharedPreferences.getInstance(),
        packageInfo: await PackageInfo.fromPlatform(),
      );
}
