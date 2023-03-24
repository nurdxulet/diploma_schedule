import 'package:flutter/material.dart';

Future<T?> bottomSheet<T>(
  Widget widget,
  BuildContext context, {
  bool? enableDrag = true,
  bool? isDismissible = false,
  bool? isScrollControlled = true,
}) {
  return showModalBottomSheet<T>(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
    ),
    context: context,
    // ignore: avoid_redundant_argument_values
    enableDrag: true,
    // isDismissible: true,
    isScrollControlled: true,
    builder: (context) {
      return widget;
    },
  );
}
