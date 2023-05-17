import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:schedule/core/extension/src/build_context.dart';
import 'package:schedule/core/resources/assets.gen.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/app/bloc/app_bloc.dart';
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
  TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      child: Scaffold(
        backgroundColor: AppColors.kScaffoldBack,
        body: BlocListener<CheckUniversityCubit, CheckUniversityState>(
          listener: (context, state) {
            state.whenOrNull(
              initialState: () {
                context.loaderOverlay.hide();
              },
              loadingState: () {
                context.loaderOverlay.show();
              },
              loadedState: (message) async {
                context.loaderOverlay.hide();
                context.appBloc.add(const AppEvent.logining());
              },
              errorState: (String message) {
                context.loaderOverlay.hide();
                buildErrorCustomSnackBar(context, message);
              },
            );
          },
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: ListView(
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
                    height: 99,
                  ),
                  Image.asset(
                    Assets.images.students.path,
                    fit: BoxFit.contain,
                    height: 350,
                  ),
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
        ),
      ),
    );
  }
}

//  body: OnBoardingSlider(
//         indicatorAbove: true,
//         // indicatorPosition: ,
//         controllerColor: Colors.black,
//         headerBackgroundColor: Colors.white,
//         finishButtonText: context.localized.start,
//         onFinish: () {
//           BlocProvider.of<AppBLoC>(context).add(const AppEvent.logining());

//           // BlocProvider.of<AppBLoC>(context).add(const AppEvent.onboardingSave());
//         },
//         finishButtonStyle: const FinishButtonStyle(
//           backgroundColor: Colors.black,
//         ),
//         skipTextButton: Text(
//           context.localized.skip,
//           style: AppTextStyles.m16w500Grey,
//         ),
//         // trailing: const Text('Login'),
//         centerBackground: true,
//         background: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Image.asset(
//               Assets.images.university.path,
//               fit: BoxFit.contain,
//               height: 350,
//               // width: 250,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0).copyWith(top: 50),
//             child: Image.asset(
//               Assets.images.educationalProgramm.path,
//               fit: BoxFit.contain,
//               height: 350,
//               // color: AppColors.kPrimary,
//               // width: 250,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0).copyWith(top: 50),
//             child: Image.asset(
//               Assets.images.schedule.path,
//               fit: BoxFit.contain,
//               height: 300,
//               // color: AppColors.kPrimary,
//               // width: 250,
//             ),
//           ),
//         ],
//         totalPage: 3,
//         speed: 1.8,
//         pageBodies: [
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 40),
//             child: Column(
//               children: [
//                 const SizedBox(
//                   height: 480,
//                 ),
//                 Text(
//                   context.localized.firstOb,
//                   style: AppTextStyles.m20w500,
//                   textAlign: TextAlign.center,
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 40),
//             child: Column(
//               children: [
//                 const SizedBox(
//                   height: 480,
//                 ),
//                 Text(
//                   context.localized.secondOb,
//                   style: AppTextStyles.m20w500,
//                   textAlign: TextAlign.center,
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 40),
//             child: Column(
//               children: [
//                 const SizedBox(
//                   height: 480,
//                 ),
//                 Text(
//                   context.localized.thirdOb,
//                   style: AppTextStyles.m20w500,
//                   textAlign: TextAlign.center,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
