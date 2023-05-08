import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:schedule/core/extension/src/build_context.dart';
import 'package:schedule/core/resources/assets.gen.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/app/bloc/app_bloc.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingSlider(
        indicatorAbove: true,
        // indicatorPosition: ,
        controllerColor: Colors.black,
        headerBackgroundColor: Colors.white,
        finishButtonText: context.localized.start,
        onFinish: () {
          BlocProvider.of<AppBLoC>(context).add(const AppEvent.logining());

          // BlocProvider.of<AppBLoC>(context).add(const AppEvent.onboardingSave());
        },
        finishButtonStyle: const FinishButtonStyle(
          backgroundColor: Colors.black,
        ),
        skipTextButton: Text(
          context.localized.skip,
          style: AppTextStyles.m16w500Grey,
        ),
        // trailing: const Text('Login'),
        centerBackground: true,
        background: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              Assets.images.university.path,
              fit: BoxFit.contain,
              height: 350,
              // width: 250,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0).copyWith(top: 50),
            child: Image.asset(
              Assets.images.educationalProgramm.path,
              fit: BoxFit.contain,
              height: 350,
              // color: AppColors.kPrimary,
              // width: 250,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0).copyWith(top: 50),
            child: Image.asset(
              Assets.images.schedule.path,
              fit: BoxFit.contain,
              height: 300,
              // color: AppColors.kPrimary,
              // width: 250,
            ),
          ),
        ],
        totalPage: 3,
        speed: 1.8,
        pageBodies: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                const SizedBox(
                  height: 480,
                ),
                Text(
                  context.localized.firstOb,
                  style: AppTextStyles.m20w500,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                const SizedBox(
                  height: 480,
                ),
                Text(
                  context.localized.secondOb,
                  style: AppTextStyles.m20w500,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                const SizedBox(
                  height: 480,
                ),
                Text(
                  context.localized.thirdOb,
                  style: AppTextStyles.m20w500,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
