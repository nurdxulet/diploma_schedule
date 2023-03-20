// ignore_for_file: avoid-ignoring-return-values, unused_import
import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule/features/app/bloc/app_bloc_observer.dart';

typedef AsyncDependencies<D> = Future<D> Function();

typedef AppBuilder<D> = Widget Function(D dependencies);

mixin MainRunner {
  static Future<Widget> _initApp<D>(
    AsyncDependencies<D> asyncDependencies,
    AppBuilder<D> app,
  ) async {
    final dependencies = await asyncDependencies();

    return app(dependencies);
  }

  static Future<void> run<D>({
    required AsyncDependencies<D> asyncDependencies,
    required AppBuilder<D> appBuilder,
  }) async {
    ///
    WidgetsFlutterBinding.ensureInitialized();
    Bloc.observer = AppBlocObserver();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    final app = await _initApp(asyncDependencies, appBuilder);
    runApp(app);
  }
}
