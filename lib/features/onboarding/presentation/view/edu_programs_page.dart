import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:schedule/core/extension/src/build_context.dart';
import 'package:schedule/features/app/router/app_router.dart';
import 'package:schedule/features/app/widgets/custom/custom_snackbars.dart';
import 'package:schedule/features/onboarding/bloc/check_university_cubit.dart';
import 'package:schedule/features/onboarding/bloc/edu_courses_cubit.dart';
import 'package:schedule/features/onboarding/bloc/edu_programs_cubit.dart';
import 'package:schedule/features/search/presentation/widgets/choice_card_widget.dart';

class EduProgramsPage extends StatefulWidget with AutoRouteWrapper {
  const EduProgramsPage({super.key});

  @override
  State<EduProgramsPage> createState() => _EduProgramsPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => EduProgramsCubit(context.repository.onboardingRepository, context.repository.authRepository),
      child: this,
    );
  }
}

class _EduProgramsPageState extends State<EduProgramsPage> {
  @override
  void initState() {
    BlocProvider.of<EduProgramsCubit>(context).getEduPrograms();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: BlocConsumer<EduProgramsCubit, EduProgramsState>(
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
                loadedState: (eduPrograms) {
                  return ListView.builder(
                    itemCount: eduPrograms.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          context.router.push(EduCoursesRoute(eduProgramId: eduPrograms[index].id));
                          // BlocProvider.of<EduProgramCoursesCubit>(context).getEduProgramCourses(eduPrograms[index].id);
                        },
                        child: ChoiceCardWidget(
                          index: index + 1,
                          text: eduPrograms[index].title,
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
