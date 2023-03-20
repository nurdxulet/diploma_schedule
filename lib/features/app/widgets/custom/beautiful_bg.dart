import 'package:flutter/material.dart';
import 'package:schedule/core/resources/assets.gen.dart';

enum BgType { big, small, top }

class BeautifulBg extends StatelessWidget {
  final Widget child;
  final BgType? bgType;
  const BeautifulBg({super.key, required this.child, this.bgType = BgType.big});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            bgType == BgType.big
                ? Assets.images.circleBackground.path
                : bgType == BgType.top
                    ? Assets.images.circleBackgroundTopp.path
                    : Assets.images.circleBackgroundSmall.path,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
