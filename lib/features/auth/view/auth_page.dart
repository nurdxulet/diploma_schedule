import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule/core/extension/src/build_context.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/app/bloc/app_bloc.dart';
import 'package:schedule/features/app/widgets/custom/custom_buttons/custom_button.dart';
import 'package:schedule/features/auth/bloc/auth_bloc.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => AuthBloc(),
      child: const _AuthPage(),
    );
  }
}

class _AuthPage extends StatefulWidget {
  const _AuthPage();

  @override
  State<_AuthPage> createState() => __AuthPageState();
}

class __AuthPageState extends State<_AuthPage> {
  // Future<void> _precache() async {
  //   for (String imageUrl in _urls) {
  //     await precachePicture(
  //       NetworkPicture(
  //         SvgPicture.svgByteDecoderBuilder,
  //         imageUrl,
  //       ),
  //       null,
  //     );
  //   }
  // }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            gradient: AppGradients.primaryGradient2,
            body: Text(
              context.localized.enterToSystem,
              style: AppTextStyles.m16w500White,
            ),
            onClick: () {
              BlocProvider.of<AppBLoC>(context).add(const AppEvent.logining());
            },
          ),
        ],
      ),
    );
  }
}
