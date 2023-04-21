// ignore: unused_import
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/app/bloc/app_bloc.dart';
import 'package:schedule/features/app/view/base.dart';
import 'package:schedule/features/auth/view/auth_page.dart';
import 'package:schedule/features/onboarding/presentation/view/onboarding_page.dart';

// ignore: unused_element
const _tag = 'Launcher';

class Launcher extends StatefulWidget {
  const Launcher({super.key});

  @override
  State<Launcher> createState() => _LauncherState();
}

class _LauncherState extends State<Launcher> {
  @override
  void initState() {
    BlocProvider.of<AppBLoC>(context).add(const AppEvent.checkAuth());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppBLoC, AppState>(
      listener: (context, state) {
        state.whenOrNull(
          inAppState: () {
            // BlocProvider.of<ProfileCubit>(context).getProfile();
            BlocProvider.of<AppBLoC>(context).add(const AppEvent.sendDeviceToken());
          },
          errorState: (message) {
            // buildErrorCustomSnackBar(context, 'AppBloc => $message');
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          notAuthorizedState: () {
            return const OnboardingPage();
            // return const Base();
            // return const AuthPage();
          },
          onboardingState: () {
            return const OnboardingPage();
          },
          inAppState: () {
            return const Base();
          },
          // loadingState: () {
          //   return const _Scaffold(child: SizedBox());
          // },
          // errorState: (String message) {
          //   return const _Scaffold(child: CustomErrorLoadingWidget());
          // },
          orElse: () {
            return const Base();
          },
        );
      },
    ); // OnBoardingPage();
  }
}

class _Scaffold extends StatelessWidget {
  final Widget child;
  const _Scaffold({
    required this.child,
    // super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      body: SafeArea(child: child),
    );
  }
}
