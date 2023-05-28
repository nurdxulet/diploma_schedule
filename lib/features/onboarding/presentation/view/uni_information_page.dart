import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:schedule/core/extension/src/build_context.dart';
import 'package:schedule/core/resources/assets.gen.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/app/bloc/app_bloc.dart';
import 'package:schedule/features/app/router/app_router.dart';
import 'package:schedule/features/app/widgets/custom/custom_buttons/custom_button.dart';
import 'package:schedule/features/app/widgets/custom/custom_snackbars.dart';
import 'package:schedule/features/onboarding/bloc/ready_cubit.dart';
import 'package:schedule/features/onboarding/models/course_dto.dart';
import 'package:schedule/features/onboarding/models/edu_program_dto.dart';
import 'package:schedule/features/search/models/group_dto.dart';
import 'package:schedule/features/settings/bloc/exit_cubit.dart';

class UniInformationPage extends StatefulWidget with AutoRouteWrapper {
  final EduProgramDTO educationalProgram;
  final CourseDTO course;
  final GroupDTO group;
  const UniInformationPage({super.key, required this.educationalProgram, required this.course, required this.group});

  @override
  State<UniInformationPage> createState() => _UniInformationPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ReadyCubit(context.repository.onboardingRepository),
        ),
        BlocProvider(
          create: (context) => ExitCubit(context.repository.homeRepository, context.repository.onboardingRepository),
        ),
      ],
      child: this,
    );
  }
}

class _UniInformationPageState extends State<UniInformationPage> {
  @override
  void initState() {
    BlocProvider.of<ReadyCubit>(context).setUniInfo(widget.educationalProgram, widget.course, widget.group);
    super.initState();
  }

  bool ready = false;
  TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          backgroundColor: AppColors.kScaffoldBack,
          body: SafeArea(
            child: BlocConsumer<ReadyCubit, ReadyState>(
              listener: (context, state) {
                state.whenOrNull(
                  initialState: () {
                    context.loaderOverlay.hide();
                  },
                  loadingState: () {
                    context.loaderOverlay.show();
                  },
                  loadedState: (university, educationalProgram, course, group) async {
                    setState(() {
                      ready = true;
                    });
                  },
                  errorState: (String message) {
                    context.loaderOverlay.hide();
                    buildErrorCustomSnackBar(context, message);
                  },
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox(),
                  loadedState: (university, educationalProgram, course, group) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${context.localized.nowLetsCheck} 👀",
                            style: AppTextStyles.m24w600.copyWith(color: AppColors.kPrimary),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            '${context.localized.educationInstitution}: ${university?.name}',
                            style: AppTextStyles.m16w500,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '${context.localized.educationalProgram}: ${educationalProgram?.title}',
                            style: AppTextStyles.m16w500,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '${context.localized.course}: ${course?.courseNumber}',
                            style: AppTextStyles.m16w500,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '${context.localized.myGroup}: ${group?.title}',
                            style: AppTextStyles.m16w500,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            Assets.images.students.path,
                            fit: BoxFit.contain,
                            height: 350,
                          ),
                          const Spacer(),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: BlocListener<ExitCubit, ExitState>(
                  listener: (context, exitState) {
                    exitState.whenOrNull(
                      errorState: (message) => buildErrorCustomSnackBar(context, message),
                      loadedState: (result) {
                        BlocProvider.of<AppBLoC>(context).add(const AppEvent.exiting());
                        context.router.replaceAll([const LauncherRoute()]);
                      },
                    );
                  },
                  child: CustomButton(
                    style: redMainButtonStyle(),
                    radius: 10,
                    body: Text(
                      'Заново',
                      // context.localized,
                      style: AppTextStyles.m16w500.copyWith(color: AppColors.kScaffoldBack),
                    ),
                    onClick: ready
                        ? () {
                            BlocProvider.of<ExitCubit>(context).removeAllFromShared();
                          }
                        : () {
                            buildErrorCustomSnackBar(context, context.localized.sorrySomethingWentWrong);
                          },
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: BlocListener<ReadyCubit, ReadyState>(
                  listener: (context, readyState) {
                    readyState.whenOrNull(
                      errorState: (message) => buildErrorCustomSnackBar(context, message),
                    );
                  },
                  child: CustomButton(
                    radius: 10,
                    body: Text(
                      context.localized.ready,
                      style: AppTextStyles.m16w500.copyWith(color: AppColors.kScaffoldBack),
                    ),
                    onClick: ready
                        ? () {
                            BlocProvider.of<AppBLoC>(context).add(const AppEvent.logining());
                            context.router.replaceAll([const LauncherRoute()]);
                          }
                        : () {
                            buildErrorCustomSnackBar(context, context.localized.sorrySomethingWentWrong);
                          },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
