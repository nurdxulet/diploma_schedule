import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:schedule/core/extension/src/build_context.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/app/router/app_router.dart';
import 'package:schedule/features/app/widgets/custom/custom_snackbars.dart';
import 'package:schedule/features/onboarding/bloc/edu_courses_cubit.dart';
import 'package:schedule/features/onboarding/bloc/groups_cubit.dart';
import 'package:schedule/features/onboarding/models/course_dto.dart';
import 'package:schedule/features/onboarding/models/edu_program_dto.dart';
import 'package:schedule/features/search/presentation/widgets/choice_card_widget.dart';

class GroupsPage extends StatefulWidget with AutoRouteWrapper {
  final EduProgramDTO educationalProgram;
  final CourseDTO course;
  const GroupsPage({super.key, required this.educationalProgram, required this.course});

  @override
  State<GroupsPage> createState() => _GroupsPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              GroupsCubit(context.repository.onboardingRepository, context.repository.onboardingRepository),
        ),
        BlocProvider(
          create: (context) => EduProgramCoursesCubit(context.repository.onboardingRepository),
        ),
      ],
      child: this,
    );
  }
}

class _GroupsPageState extends State<GroupsPage> {
  @override
  void initState() {
    BlocProvider.of<GroupsCubit>(context)
        .getEduProgramCourses(widget.educationalProgram.id, widget.course.courseNumber);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: BlocConsumer<GroupsCubit, GroupsState>(
                listener: (context, state) {
                  state.whenOrNull(
                    initialState: () {
                      context.loaderOverlay.hide();
                    },
                    loadingState: () {
                      context.loaderOverlay.show();
                    },
                    loadedState: (eduPrograms) async {
                      context.loaderOverlay.hide();
                      setState(() {});
                      // context.router.push(const EduCoursesRoute());
                      // context.router.push();
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
                    loadedState: (groups) {
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
                              itemCount: groups.length,
                              itemBuilder: (context, index) {
                                return ChoiceCardWidget(
                                  onCardTap: () {
                                    context.router.push(
                                      UniInformationRoute(
                                        educationalProgram: widget.educationalProgram,
                                        course: widget.course,
                                        group: groups[index],
                                      ),
                                    );
                                  },
                                  index: index + 1,
                                  text: groups[index].title,
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
