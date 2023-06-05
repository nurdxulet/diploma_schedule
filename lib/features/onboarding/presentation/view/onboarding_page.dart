import 'package:auto_route/auto_route.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
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
    getToken();
    super.initState();
  }

  Future<void> getToken() async {
    final String? deviceToken = await FirebaseMessaging.instance.getToken();
    debugPrint(deviceToken);
  }

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
                    context.router.push(const GroupsRoute());
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${context.localized.welcomeToTANSchedule} 🖖",
                      style: AppTextStyles.m24w600.copyWith(color: AppColors.kPrimary),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      context.localized.iWillShowMuchMore,
                      style: AppTextStyles.m16w500,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Image.asset(
                        Assets.images.students.path,
                        fit: BoxFit.contain,
                        height: 350,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomTextField(
                  hintText: context.localized.enterEducationInstitutionCode,
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
                    if (codeController.text.isEmpty) {
                      buildErrorCustomSnackBar(context, context.localized.enterEducationInstitutionCode);
                    } else {
                      BlocProvider.of<CheckUniversityCubit>(context).checkUniversity(codeController.text);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
