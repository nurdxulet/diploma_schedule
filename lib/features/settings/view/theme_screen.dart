// import 'package:bord_flutter_app/src/core/constants/padding_constants.dart';
// import 'package:bord_flutter_app/src/core/provider/theme_provider.dart';
// import 'package:bord_flutter_app/src/core/widgets/primary_app_bar_3.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../../../core/constants/color-constants.dart';
// import '../../../core/constants/text_style_constants.dart';
// import '../widgets/theme_button.dart';

// class ThemeScreen extends StatefulWidget {
//   const ThemeScreen({Key? key}) : super(key: key);

//   @override
//   State<ThemeScreen> createState() => _ThemeScreenState();
// }

// class _ThemeScreenState extends State<ThemeScreen> {
//   late bool theme;
//   @override
//   Widget build(BuildContext context) {
//     final themeProvider = Provider.of<ThemeProvider>(context);
//     final bool darkMode = themeProvider.isDarkMode;
//     final bool lightMode = themeProvider.isLightMode;
//     return Scaffold(
//       appBar: const PrimaryAppBar3(value: 'Дизайн'),
//       body: SafeArea(
//           child: Padding(
//         padding: AppPaddings.horizontal,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             const SizedBox(height: 20),
//             ThemeButton(
//               txt: 'Светлый',
//               icon: Icons.sunny,
//               enabled: lightMode,
//               onPressed: () {
//                 theme = false;
//                 final provider =
//                     Provider.of<ThemeProvider>(context, listen: false);
//                 provider.toggleTheme(theme);
//               },
//             ),
//             const SizedBox(height: 20),
//             ThemeButton(
//               txt: 'Темный',
//               icon: Icons.nightlight_round_sharp,
//               enabled: darkMode,
//               onPressed: () {
//                 theme = true;
//                 final provider =
//                     Provider.of<ThemeProvider>(context, listen: false);
//                 provider.toggleTheme(theme);
//               },
//             )
//           ],
//         ),
//       )),
//     );
//   }
// }
