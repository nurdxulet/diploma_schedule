import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

const _tag = 'RouterObserver';

class RouterObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    log('New route pushed: ${route.settings.name}', name: _tag);
  }

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    log('Tab route visited: ${route.name}', name: _tag);
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    log('Tab route re-visited: ${route.name}', name: _tag);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    log(
      'New route after popped: ${route.settings.name}, ${previousRoute?.settings.name}',
      name: _tag,
    );
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    log('New route after removed: ${route.settings.name}', name: _tag);
  }
}
