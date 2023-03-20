import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class TempPage extends StatelessWidget {
  final Color color;
  const TempPage({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: SafeArea(
        child: Center(
          child: SizedBox(
            // width: 200.0,
            // height: 100.0,
            child: Shimmer.fromColors(
              baseColor: Colors.red,
              highlightColor: Colors.yellow,
              child: const Text(
                'Этот раздел находится в стадии разработки\n'
                '\n'
                'Бұл бөлім әзірленуде\n'
                '\n'
                'This section is under development\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
