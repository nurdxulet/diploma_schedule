import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason>
    buildSuccessCustomSnackBar(BuildContext context, String message) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      elevation: 6.0,
      behavior: SnackBarBehavior.floating,
      content: Text(
        message,
        textAlign: TextAlign.center,
      ),
      backgroundColor: Colors.greenAccent,
    ),
  );
}

ScaffoldFeatureController<SnackBar, SnackBarClosedReason>
    buildErrorCustomSnackBar(BuildContext context, String message) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      elevation: 6.0,
      behavior: SnackBarBehavior.floating,
      content: Text(
        message,
        textAlign: TextAlign.center,
      ),
      backgroundColor: Colors.red,
    ),
  );
}

ScaffoldFeatureController<MaterialBanner, MaterialBannerClosedReason>
    buildTopBanner(
  BuildContext context,
  String message, {
  Color color = Colors.red,
}) {
  return ScaffoldMessenger.of(context).showMaterialBanner(
    MaterialBanner(
      content: Row(
        children: [
          Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
      overflowAlignment: OverflowBarAlignment.start,
      // leading: const Icon(Icons.info),
      // padding: const EdgeInsets.only(right: 16, left: 16, top: 20),
      backgroundColor: color,
      actions: [
        TextButton(
          child: const Text(
            'Закрыть',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () =>
              ScaffoldMessenger.of(context).hideCurrentMaterialBanner(),
        ),
      ],
    ),
  );
}

void showTopShortToast(
  BuildContext context, {
  required String message,
  double radius = 12,
  EdgeInsetsGeometry? padding =
      const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
  Color color = Colors.greenAccent,
  Widget? body,
}) {
  final FToast fToast = FToast();
  fToast.init(context);

  final Widget toast = Container(
    padding: padding,
    margin: const EdgeInsets.symmetric(horizontal: 32),
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      color: color,
    ),
    child: body ??
        Text(
          message,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
  );

  fToast.showToast(
    child: toast,
    gravity: ToastGravity.TOP,
    toastDuration: const Duration(seconds: 4),
    positionedToastBuilder: (context, child) {
      return Positioned(
        top: 50.0,
        left: 0,
        right: 0,
        // left: MediaQuery.of(context).size.width / 3,
        child: child,
      );
    },
  );
}
