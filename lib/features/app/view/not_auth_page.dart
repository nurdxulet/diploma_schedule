// import 'package:schedule/core/resources/assets.gen.dart';
// import 'package:schedule/core/resources/resources.dart';
// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class NotAuthPage extends StatelessWidget {
//   const NotAuthPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Column(
//         children: [
//           // const BaseAppBar(
//           //   hasBackLeading: false,
//           // ),
//           Expanded(
//             child: ListView(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 16,
//               ),
//               children: [
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 SvgPicture.asset(Assets.icons.circlePerson.path),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 const Text(
//                   'Войдите или зарегистрируйтесь',
//                   style: AppTextStyles.os18w400,
//                   textAlign: TextAlign.center,
//                 ),
//                 const SizedBox(
//                   height: 8,
//                 ),
//                 const Text(
//                   'Управляйте своими объектами легко !',
//                   style: AppTextStyles.os16w400,
//                   textAlign: TextAlign.center,
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 CustomButton(
//                   height: 44,
//                   body: const Text(
//                     'Войдите или зарегистрируйтесь',
//                     style: AppTextStyles.os16w600White,
//                   ),
//                   onClick: () {
//                     context.router.push(const LoginRoute());
//                   },
//                   style: blueButtonStyle(radius: 4),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
