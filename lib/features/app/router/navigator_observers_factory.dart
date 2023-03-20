import 'package:flutter/material.dart';
import 'package:schedule/features/app/router/router_observer.dart';

class NavigatorObserversFactory {
  const NavigatorObserversFactory();

  List<NavigatorObserver> call() => [
        // SentryNavigatorObserver(),
        RouterObserver(),
      ];
}
