import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
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
        finishButtonText: 'Начать',
        onFinish: () {
          BlocProvider.of<AppBLoC>(context).add(const AppEvent.logining());
        },
        finishButtonStyle: const FinishButtonStyle(
          backgroundColor: Colors.black,
        ),
        skipTextButton: const Text('Пропустить'),
        // trailing: const Text('Login'),
        background: [
          Image.network('https://c8.alamy.com/zoomses/6/5a22947e2f00402195d32f919b5631a8/w3wdrf.jpg'),
          Image.network('https://c8.alamy.com/zoomses/6/5a22947e2f00402195d32f919b5631a8/w3wdrf.jpg'),
          Image.network('https://c8.alamy.com/zoomses/6/5a22947e2f00402195d32f919b5631a8/w3wdrf.jpg'),
        ],
        totalPage: 3,
        speed: 1.8,
        pageBodies: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: const [
                SizedBox(
                  height: 480,
                ),
                Text('Description Text 1'),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 480,
                ),
                const Text('Description Text 2'),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 480,
                ),
                const Text('Description Text 3'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
