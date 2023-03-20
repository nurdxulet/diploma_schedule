import 'package:flutter/material.dart';

class ScrollWrapper extends StatelessWidget {
  final Widget child;
  const ScrollWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: child,
        )
      ],
    );
  }
}
