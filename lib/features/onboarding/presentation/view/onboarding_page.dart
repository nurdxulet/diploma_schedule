import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:schedule/core/extension/src/build_context.dart';
import 'package:schedule/core/resources/assets.gen.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/app/router/app_router.dart';
import 'package:schedule/features/app/widgets/custom/custom_buttons/custom_button.dart';
import 'package:schedule/features/app/widgets/custom/custom_snackbars.dart';
import 'package:schedule/features/app/widgets/custom/custom_text_field.dart';
import 'package:schedule/features/onboarding/bloc/check_university_cubit.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  void initState() {
    super.initState();
  }

  int page = 0;
  TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          backgroundColor: AppColors.kScaffoldBack,
          body: SafeArea(
            child: BlocListener<CheckUniversityCubit, CheckUniversityState>(
              listener: (context, state) {
                state.whenOrNull(
                  initialState: () {
                    context.loaderOverlay.hide();
                  },
                  loadingState: () {
                    context.loaderOverlay.show();
                  },
                  loadedState: (university) async {
                    context.loaderOverlay.hide();
                    context.router.push(const EduProgramsRoute());
                    // context.appBloc.add(const AppEvent.logining());
                  },
                  errorState: (String message) {
                    context.loaderOverlay.hide();
                    buildErrorCustomSnackBar(context, message);
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Column(
                  children: [
                    Text(
                      "Добро пожаловать в TAN Schedule! 🖖",
                      style: AppTextStyles.m24w600.copyWith(color: AppColors.kPrimary),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Я покажу актуальное расписание занятий, какие аудитории свободны а так же многое другое!",
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
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: page == 0
              ? Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomTextField(
                        hintText: 'Введите код университета',
                        hintStyle: AppTextStyles.m16w500,
                        textStyle: AppTextStyles.m16w500,
                        controller: codeController,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      CustomButton(
                        radius: 10,
                        body: Text(
                          context.localized.start,
                          style: AppTextStyles.m16w500.copyWith(color: AppColors.kScaffoldBack),
                        ),
                        onClick: () {
                          BlocProvider.of<CheckUniversityCubit>(context).checkUniversity(codeController.text);
                        },
                      ),
                    ],
                  ),
                )
              : const SizedBox(),
        ),
      ),
    );
  }
}
