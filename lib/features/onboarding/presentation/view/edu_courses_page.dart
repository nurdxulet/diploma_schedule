import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:schedule/core/extension/src/build_context.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/app/router/app_router.dart';
import 'package:schedule/features/app/widgets/custom/custom_snackbars.dart';
import 'package:schedule/features/onboarding/bloc/edu_courses_cubit.dart';
import 'package:schedule/features/onboarding/bloc/edu_programs_cubit.dart';
import 'package:schedule/features/onboarding/models/edu_program_dto.dart';
import 'package:schedule/features/search/presentation/widgets/choice_card_widget.dart';

class EduCoursesPage extends StatefulWidget with AutoRouteWrapper {
  final EduProgramDTO educationalProgram;
  const EduCoursesPage({super.key, required this.educationalProgram});

  @override
  State<EduCoursesPage> createState() => _EduCoursesPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => EduProgramCoursesCubit(context.repository.onboardingRepository),
        ),
        BlocProvider(
          create: (context) => EduProgramsCubit(context.repository.onboardingRepository),
        ),
      ],
      child: this,
    );
  }
}

class _EduCoursesPageState extends State<EduCoursesPage> {
  @override
  void initState() {
    BlocProvider.of<EduProgramCoursesCubit>(context).getEduProgramCourses(widget.educationalProgram);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: LoaderOverlay(
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: BlocConsumer<EduProgramCoursesCubit, EduProgramCoursesState>(
                listener: (context, state) {
                  state.whenOrNull(
                    initialState: () {
                      context.loaderOverlay.hide();
                    },
                    loadingState: () {
                      context.loaderOverlay.show();
                    },
                    loadedState: (course) async {
                      context.loaderOverlay.hide();
                      // setState(() {});
                      // context.router.push();
                      // context.appBloc.add(const AppEvent.logining());
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
                    loadedState: (eduCourses) {
                      return Column(
                        children: [
                          Text(
                            context.localized.chooseGroup,
                            style: AppTextStyles.m15w600.copyWith(color: AppColors.kPrimary),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: eduCourses.length,
                              itemBuilder: (context, index) {
                                return ChoiceCardWidget(
                                  onCardTap: () {
                                    context.router.push(
                                      GroupsRoute(
                                        course: eduCourses[index],
                                        educationalProgram: widget.educationalProgram,
                                      ),
                                    );
                                    // BlocProvider.of<EduProgramCoursesCubit>(context).getEduProgramCourses(eduPrograms[index].id);
                                  },
                                  index: index + 1,
                                  text: '${context.localized.course} ${eduCourses[index].courseNumber}',
                                );
                              },
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
