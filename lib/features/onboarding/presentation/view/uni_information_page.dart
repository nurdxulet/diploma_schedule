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
import 'package:schedule/features/search/models/group_dto.dart';
import 'package:schedule/features/settings/bloc/exit_cubit.dart';

class UniInformationPage extends StatefulWidget with AutoRouteWrapper {
  // final EduProgramDTO educationalProgram;
  // final CourseDTO course;
  final List<GroupDTO> groups;
  const UniInformationPage({
    super.key,
    //  required this.educationalProgram, required this.course,
    required this.groups,
  });

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
    BlocProvider.of<ReadyCubit>(context).setUniInfo(
      // widget.course,
      widget.groups,
    );
    super.initState();
  }

  bool ready = false;
  TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      child: Scaffold(
        // backgroundColor: AppColors.kScaffoldBack,
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
                loadedState: (university, groups) async {
                  
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
                loadedState: (university, groups) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${context.localized.nowLetsCheck} 👀",
                          textAlign: TextAlign.center,
                          style: AppTextStyles.m24w600.copyWith(color: AppColors.kPrimary),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              '${context.localized.educationInstitution}:',
                              style: AppTextStyles.m16w500,
                              maxLines: 5,
                            ),
                            const Spacer(),
                            Text(
                              '${university?.name}',
                              style: AppTextStyles.m16w500,
                              maxLines: 5,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              '${context.localized.groups}: ',
                              style: AppTextStyles.m16w500,
                              maxLines: 5,
                            ),
                            const Spacer(),
                            Expanded(
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: groups?.length,
                                  itemBuilder: (context, index) {
                                    return Text(
                                      '${groups?[index].title} 🔘',
                                      textAlign: TextAlign.end,
                                      style: AppTextStyles.m16w500,
                                      maxLines: 5,
                                    );
                                  },),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          Assets.images.personLookingInBinocularsVector1.path,
                          fit: BoxFit.contain,
                          height: 300,
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
              child: CustomButton(
                style: greenMainButtonStyle(),
                radius: 10,
                body: Text(
                  context.localized.changeGroups,
                  // context.localized,
                  style: AppTextStyles.m16w500.copyWith(color: AppColors.kScaffoldBack),
                ),
                onClick: () => context.router.pop(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
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
                    context.localized.startOver,
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
    );
  }
}
