import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class TopIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _TopIndicatorBox();
  }
}

class _TopIndicatorBox extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Paint paint = Paint()
      ..shader = const RadialGradient(
        colors: [
          Color(0xff8063D4),
          Color(0xff7271F2),
        ],
      ).createShader(
        Rect.fromCircle(
          center: offset,
          radius: 0,
        ),
      )
      ..strokeWidth = 5
      ..isAntiAlias = true
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(
      Offset(cfg.size!.width + offset.dx - 50, 2.5),
      Offset(cfg.size!.width + offset.dx - 20, 2.5),
      paint,
    );
  }
}
