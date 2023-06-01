// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    LauncherRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: const Launcher(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: const OnboardingPage(),
      );
    },
    EduProgramsRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: WrappedRoute(child: const EduProgramsPage()),
      );
    },
    EduCoursesRoute.name: (routeData) {
      final args = routeData.argsAs<EduCoursesRouteArgs>();
      return MaterialPageX<void>(
        routeData: routeData,
        child: WrappedRoute(
            child: EduCoursesPage(
          key: args.key,
          educationalProgram: args.educationalProgram,
        )),
      );
    },
    GroupsRoute.name: (routeData) {
      final args = routeData.argsAs<GroupsRouteArgs>();
      return MaterialPageX<void>(
        routeData: routeData,
        child: WrappedRoute(
            child: GroupsPage(
          key: args.key,
          educationalProgram: args.educationalProgram,
          course: args.course,
        )),
      );
    },
    UniInformationRoute.name: (routeData) {
      final args = routeData.argsAs<UniInformationRouteArgs>();
      return MaterialPageX<void>(
        routeData: routeData,
        child: WrappedRoute(
            child: UniInformationPage(
          key: args.key,
          educationalProgram: args.educationalProgram,
          course: args.course,
          group: args.group,
        )),
      );
    },
    ScheduleRoute.name: (routeData) {
      final args = routeData.argsAs<ScheduleRouteArgs>();
      return MaterialPageX<void>(
        routeData: routeData,
        child: WrappedRoute(
            child: SchedulePage(
          key: args.key,
          id: args.id,
          searchType: args.searchType,
        )),
      );
    },
    LanguageRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: const LanguagePage(),
      );
    },
    AuthRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: const AuthPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: WrappedRoute(child: const HomePage()),
      );
    },
    ChoiceRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: const ChoicePage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: WrappedRoute(child: const SettingsPage()),
      );
    },
    TempRoute.name: (routeData) {
      final args = routeData.argsAs<TempRouteArgs>();
      return MaterialPageX<void>(
        routeData: routeData,
        child: TempPage(
          key: args.key,
          color: args.color,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          LauncherRoute.name,
          path: '/',
          children: [
            RouteConfig(
              HomeRoute.name,
              path: 'home-page',
              parent: LauncherRoute.name,
            ),
            RouteConfig(
              ChoiceRoute.name,
              path: 'choice-page',
              parent: LauncherRoute.name,
            ),
            RouteConfig(
              SettingsRoute.name,
              path: 'settings-page',
              parent: LauncherRoute.name,
            ),
            RouteConfig(
              TempRoute.name,
              path: 'temp-page',
              parent: LauncherRoute.name,
            ),
          ],
        ),
        RouteConfig(
          OnboardingRoute.name,
          path: '/onboarding-page',
        ),
        RouteConfig(
          EduProgramsRoute.name,
          path: '/edu-programs-page',
        ),
        RouteConfig(
          EduCoursesRoute.name,
          path: '/edu-courses-page',
        ),
        RouteConfig(
          GroupsRoute.name,
          path: '/groups-page',
        ),
        RouteConfig(
          UniInformationRoute.name,
          path: '/uni-information-page',
        ),
        RouteConfig(
          ScheduleRoute.name,
          path: '/schedule-page',
        ),
        RouteConfig(
          LanguageRoute.name,
          path: '/language-page',
        ),
        RouteConfig(
          AuthRoute.name,
          path: '/auth-page',
        ),
      ];
}

/// generated route for
/// [Launcher]
class LauncherRoute extends PageRouteInfo<void> {
  const LauncherRoute({List<PageRouteInfo>? children})
      : super(
          LauncherRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'LauncherRoute';
}

/// generated route for
/// [OnboardingPage]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute()
      : super(
          OnboardingRoute.name,
          path: '/onboarding-page',
        );

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [EduProgramsPage]
class EduProgramsRoute extends PageRouteInfo<void> {
  const EduProgramsRoute()
      : super(
          EduProgramsRoute.name,
          path: '/edu-programs-page',
        );

  static const String name = 'EduProgramsRoute';
}

/// generated route for
/// [EduCoursesPage]
class EduCoursesRoute extends PageRouteInfo<EduCoursesRouteArgs> {
  EduCoursesRoute({
    Key? key,
    required EduProgramDTO educationalProgram,
  }) : super(
          EduCoursesRoute.name,
          path: '/edu-courses-page',
          args: EduCoursesRouteArgs(
            key: key,
            educationalProgram: educationalProgram,
          ),
        );

  static const String name = 'EduCoursesRoute';
}

class EduCoursesRouteArgs {
  const EduCoursesRouteArgs({
    this.key,
    required this.educationalProgram,
  });

  final Key? key;

  final EduProgramDTO educationalProgram;

  @override
  String toString() {
    return 'EduCoursesRouteArgs{key: $key, educationalProgram: $educationalProgram}';
  }
}

/// generated route for
/// [GroupsPage]
class GroupsRoute extends PageRouteInfo<GroupsRouteArgs> {
  GroupsRoute({
    Key? key,
    required EduProgramDTO educationalProgram,
    required CourseDTO course,
  }) : super(
          GroupsRoute.name,
          path: '/groups-page',
          args: GroupsRouteArgs(
            key: key,
            educationalProgram: educationalProgram,
            course: course,
          ),
        );

  static const String name = 'GroupsRoute';
}

class GroupsRouteArgs {
  const GroupsRouteArgs({
    this.key,
    required this.educationalProgram,
    required this.course,
  });

  final Key? key;

  final EduProgramDTO educationalProgram;

  final CourseDTO course;

  @override
  String toString() {
    return 'GroupsRouteArgs{key: $key, educationalProgram: $educationalProgram, course: $course}';
  }
}

/// generated route for
/// [UniInformationPage]
class UniInformationRoute extends PageRouteInfo<UniInformationRouteArgs> {
  UniInformationRoute({
    Key? key,
    required EduProgramDTO educationalProgram,
    required CourseDTO course,
    required GroupDTO group,
  }) : super(
          UniInformationRoute.name,
          path: '/uni-information-page',
          args: UniInformationRouteArgs(
            key: key,
            educationalProgram: educationalProgram,
            course: course,
            group: group,
          ),
        );

  static const String name = 'UniInformationRoute';
}

class UniInformationRouteArgs {
  const UniInformationRouteArgs({
    this.key,
    required this.educationalProgram,
    required this.course,
    required this.group,
  });

  final Key? key;

  final EduProgramDTO educationalProgram;

  final CourseDTO course;

  final GroupDTO group;

  @override
  String toString() {
    return 'UniInformationRouteArgs{key: $key, educationalProgram: $educationalProgram, course: $course, group: $group}';
  }
}

/// generated route for
/// [SchedulePage]
class ScheduleRoute extends PageRouteInfo<ScheduleRouteArgs> {
  ScheduleRoute({
    Key? key,
    required String id,
    required String searchType,
  }) : super(
          ScheduleRoute.name,
          path: '/schedule-page',
          args: ScheduleRouteArgs(
            key: key,
            id: id,
            searchType: searchType,
          ),
        );

  static const String name = 'ScheduleRoute';
}

class ScheduleRouteArgs {
  const ScheduleRouteArgs({
    this.key,
    required this.id,
    required this.searchType,
  });

  final Key? key;

  final String id;

  final String searchType;

  @override
  String toString() {
    return 'ScheduleRouteArgs{key: $key, id: $id, searchType: $searchType}';
  }
}

/// generated route for
/// [LanguagePage]
class LanguageRoute extends PageRouteInfo<void> {
  const LanguageRoute()
      : super(
          LanguageRoute.name,
          path: '/language-page',
        );

  static const String name = 'LanguageRoute';
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute()
      : super(
          AuthRoute.name,
          path: '/auth-page',
        );

  static const String name = 'AuthRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home-page',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [ChoicePage]
class ChoiceRoute extends PageRouteInfo<void> {
  const ChoiceRoute()
      : super(
          ChoiceRoute.name,
          path: 'choice-page',
        );

  static const String name = 'ChoiceRoute';
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: 'settings-page',
        );

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [TempPage]
class TempRoute extends PageRouteInfo<TempRouteArgs> {
  TempRoute({
    Key? key,
    required Color color,
  }) : super(
          TempRoute.name,
          path: 'temp-page',
          args: TempRouteArgs(
            key: key,
            color: color,
          ),
        );

  static const String name = 'TempRoute';
}

class TempRouteArgs {
  const TempRouteArgs({
    this.key,
    required this.color,
  });

  final Key? key;

  final Color color;

  @override
  String toString() {
    return 'TempRouteArgs{key: $key, color: $color}';
  }
}
