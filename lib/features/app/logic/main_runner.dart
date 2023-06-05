// ignore_for_file: avoid-ignoring-return-values, unused_import
import 'dart:async';
import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule/core/services/notification_service.dart';
import 'package:schedule/features/app/bloc/app_bloc_observer.dart';
import 'package:schedule/firebase_options.dart';

typedef AsyncDependencies<D> = Future<D> Function();

typedef AppBuilder<D> = Widget Function(D dependencies);

mixin MainRunner {
  static Future<Widget> _initApp<D>(
    bool shouldSend,
    AsyncDependencies<D> asyncDependencies,
    AppBuilder<D> app,
  ) async {
    final dependencies = await asyncDependencies();

    return app(dependencies);
  }

  static Future<void> run<D>({
    required AsyncDependencies<D> asyncDependencies,
    required AppBuilder<D> appBuilder,
    bool shouldSend = !kDebugMode,
  }) async {
    ///
    WidgetsFlutterBinding.ensureInitialized();
    Bloc.observer = AppBlocObserver();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await NotificationService().init();

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    final app = await _initApp(shouldSend, asyncDependencies, appBuilder);

    runApp(app);
  }
}
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  if (kDebugMode) {
    print("Handling a background message: ${message.messageId}");
  }
}
