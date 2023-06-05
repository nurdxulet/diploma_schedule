import 'dart:developer';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

const AndroidNotificationChannel channel = AndroidNotificationChannel(
  'high_importance_channel', // id
  'High Importance Notifications', // title
  description: 'This channel is used for important notifications.', // description
  importance: Importance.high,
);

class NotificationService {
  // SharedPreferences sharedPreferences;
  NotificationService();
  late FirebaseMessaging _messaging;
  Future<void> init() async {
    _messaging = FirebaseMessaging.instance;
    _messaging.getInitialMessage().then((value) => log('Message is $value'));

    if (Platform.isIOS) {
      await _requestPermissionToNotifications(_messaging);
    }

    _messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    await getDeviceToken();

    const initializationSettingsAndroid = AndroidInitializationSettings('@mipmap/launcher_icon');
    const initializationSettingsIOs = DarwinInitializationSettings();
    const initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOs,
    );
    // ignore: avoid-ignoring-return-values
    flutterLocalNotificationsPlugin.initialize(initializationSettings);

    FirebaseMessaging.onMessage.listen((RemoteMessage event) async {
      final RemoteNotification? notification = event.notification;
      log('notification --- ${notification?.toMap()}');
      final AndroidNotification? android = Platform.isAndroid ? event.notification?.android : null;

      if (Platform.isAndroid == true && notification?.title != null) {
        debugPrint(notification?.title);
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification?.title,
          notification?.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              icon: '@mipmap/launcher_icon',
            ),
          ),
        );
      }
    });
  }

  Future<String?> getDeviceToken() async {
    final String? deviceToken = await FirebaseMessaging.instance.getToken();
    log('DEVICE TOKEN :::::$deviceToken');
    return deviceToken;
  }

  Future<void> _requestPermissionToNotifications(
    FirebaseMessaging messaging,
  ) async {
    final NotificationSettings settings = await messaging.requestPermission();

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      if (kDebugMode) {
        print('User granted permission');
      }
    } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
      if (kDebugMode) {
        print('User granted provisional permission');
      }
    } else {
      if (kDebugMode) {
        print('User declined or has not accepted permission');
      }
    }
  }
}
