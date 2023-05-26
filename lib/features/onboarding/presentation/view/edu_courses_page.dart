import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:schedule/core/extension/src/build_context.dart';
import 'package:schedule/features/app/widgets/custom/custom_snackbars.dart';
import 'package:schedule/features/onboarding/bloc/edu_courses_cubit.dart';
import 'package:schedule/features/search/presentation/widgets/choice_card_widget.dart';

class EduCoursesPage extends StatefulWidget with AutoRouteWrapper {
  final String eduProgramId;
  const EduCoursesPage({super.key, required this.eduProgramId});

  @override
  State<EduCoursesPage> createState() => _EduCoursesPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          EduProgramCoursesCubit(context.repository.onboardingRepository, context.repository.authRepository),
      child: this,
    );
  }
}

class _EduCoursesPageState extends State<EduCoursesPage> {
  @override
  void initState() {
    BlocProvider.of<EduProgramCoursesCubit>(context).getEduProgramCourses(widget.eduProgramId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                loadedState: (eduPrograms) async {
                  context.loaderOverlay.hide();
                  setState(() {});
                  // context.router.push(const EduCoursesRoute());
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
                  return ListView.builder(
                    itemCount: eduCourses.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          // context.router.push(const EduCoursesRoute());
                          // BlocProvider.of<EduProgramCoursesCubit>(context).getEduProgramCourses(eduPrograms[index].id);
                        },
                        child: ChoiceCardWidget(
                          index: index + 1,
                          text: eduCourses[index].courseNumber.toString(),
                        ),
                      );
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
