import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:schedule/features/app/view/launcher.dart';
import 'package:schedule/features/app/view/temp_page.dart';
import 'package:schedule/features/auth/view/auth_page.dart';
import 'package:schedule/features/home/view/home_page.dart';
import 'package:schedule/features/onboarding/presentation/view/onboarding_page.dart';
import 'package:schedule/features/search/view/search_screen.dart';
import 'package:schedule/features/settings/view/language_page.dart';
import 'package:schedule/features/settings/view/settings_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute<void>(
      page: Launcher,
      initial: true,
      name: 'LauncherRoute',
      children: [
        AutoRoute<void>(page: HomePage),
        AutoRoute<void>(page: SearchPage),
        AutoRoute<void>(page: SettingsPage),
        AutoRoute<void>(page: TempPage),
        // AutoRoute<void>(page: ProfilePage),
        // AutoRoute<void>(
        //   page: EmptyRouterPage,
        //   name: 'BaseUbtBattleRoute',
        //   children: [
        //     AutoRoute<void>(
        //       page: UbtBattlePage,
        //       initial: true,
        //     ),
        //   ],
        // ), // AutoRoute<void>(page: NotAuthPage),
      ],
    ),

    //Onboarding
    AutoRoute<void>(page: OnboardingPage),

    //Settings
    AutoRoute<void>(page: LanguagePage),

    ///Main pages
    // AutoRoute<void>(page: NewsDetailPage),
    // AutoRoute<void>(page: CalendarPage),
    // AutoRoute<void>(page: NotificationPage),

    // ///Oqysai pages
    // AutoRoute<void>(page: DiagnosticTestPage),
    // AutoRoute<void>(page: VersionAnalysisPage),
    // AutoRoute<void>(page: ChooseSubjectPage),
    // AutoRoute<void>(page: TestPage),
    // AutoRoute<void>(page: TestResultPage),
    // AutoRoute<void>(page: WorkWithErrorsPage),
    // AutoRoute<void>(page: WorkWithErrorsDetailPage),
    // AutoRoute<void>(page: ExplanatoryVideoPage),
    // AutoRoute<void>(page: VideoSubjectsPage),
    // AutoRoute<void>(page: TrialTestProgressPage),
    // AutoRoute<void>(page: PersonalPlanPage),
    // AutoRoute<void>(page: PersonalPlanSubjectsPage),
    // AutoRoute<void>(page: PersonalPlanMaterialsPage),

    // /// auth pages
    AutoRoute<void>(page: AuthPage),
    // AutoRoute<void>(page: ForgotPasswordPage),
    // AutoRoute<void>(page: NewPasswordPage),

    // // // Profile
    // // AutoRoute<void>(page: ProfilePage),
    // // AutoRoute<void>(page: PersonalAccountPage),
    // AutoRoute<void>(page: PersonalInfoPage),
    // AutoRoute<void>(page: SubjectsPage),
    // AutoRoute<void>(page: TimetablePage),
    // AutoRoute<void>(page: RatingPage),
    // AutoRoute<void>(page: TestPreviewPage),
    // AutoRoute<void>(page: PairWorkPage),
    // AutoRoute<void>(page: PairWorkSubjectPage),
    // AutoRoute<void>(page: PairWorkDetailsPage),
    // AutoRoute<void>(page: DocumentsPage),
    // AutoRoute<void>(page: PaymentChecksPage),
    // AutoRoute<void>(page: TasksPage),
    // AutoRoute<void>(page: DescriptionChatPage),

    // // // Profile Test Pages
    // AutoRoute<void>(page: ProfileTestPreviewPage),
    // AutoRoute<void>(page: ProfileTestResultsPage),
    // AutoRoute<void>(page: ProfileTestDiagnosticsPage),
    // AutoRoute<void>(page: AnalyticsPage),
    // AutoRoute<void>(page: TasksPage),

    // // // Lessons
    // AutoRoute<void>(page: LessonDetailPage),
    // AutoRoute<void>(page: LessonSectionPage),
    // AutoRoute<void>(page: LessonLiveStreamPage),
    // AutoRoute<void>(page: LessonLeaveReviewPage),
    // AutoRoute<void>(page: LessonConspectsPage),
    // // AutoRoute<void>(page: ShowPdfPage),

    // /// UBT Batlle Pages
    // AutoRoute<String?>(page: UbtSubjectChoosePage),
    // AutoRoute<void>(page: UbtStartGamingPage),
    // AutoRoute<void>(page: UbtGameBattlePage),
    // AutoRoute<void>(page: UbtResultPage),

    // /// Home Work Pages
    // AutoRoute<void>(page: HomeWorkPage),
    // AutoRoute<void>(page: HomeWorkDetailPage),
    // AutoRoute<void>(page: HomeWorkDetailAnswersPage),

    // /// Chat Pages
    // AutoRoute<void>(page: ChatDetailPage)
  ],
)
class AppRouter extends _$AppRouter {}
