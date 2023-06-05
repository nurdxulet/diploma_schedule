part of 'resources.dart';

mixin AppTheme {
  static ThemeData get light => ThemeData(
        // primarySwatch: MaterialColor(0xffB1F9A3, primaryColorMap),
        // fontFamily: AppFonts.gilroy,
        fontFamily: Platform.isIOS ? FontFamily.mukta : FontFamily.openSans,
        // appBarTheme: const AppBarTheme(
        //   elevation: 0,
        //   systemOverlayStyle: SystemUiOverlayStyle.dark,
        //   backgroundColor: AppColors.kWhite,
        // ),ата
        scaffoldBackgroundColor: AppColors.kWhite,
        primaryColor: AppColors.kBlue,
      );
}

mixin AppDecorations {
  static const List<BoxShadow> dropShadow = [
    BoxShadow(
      offset: Offset(1, 1),
      blurRadius: 6,
      color: Color.fromRGBO(0, 0, 0, 0.25),
    ),
  ];

  static const List<BoxShadow> estateCardShadow = [
    BoxShadow(
      offset: Offset(0, 8),
      blurRadius: 20,
      color: Color.fromRGBO(0, 0, 0, 0.08),
    ),
  ];

  static const List<BoxShadow> appBarButtonShadows = [
    BoxShadow(
      blurRadius: 5,
      color: Color.fromRGBO(72, 117, 243, 0.07),
    ),
    BoxShadow(
      offset: Offset(0, 25),
      blurRadius: 35,
      color: Color.fromRGBO(72, 117, 243, 0.05),
    ),
  ];
}
