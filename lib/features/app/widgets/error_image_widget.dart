import 'package:flutter/material.dart';
import 'package:schedule/core/common/constants.dart';
import 'package:schedule/core/resources/resources.dart';

class ErrorImageWidget extends StatelessWidget {
  final double? height;
  final double? width;
  const ErrorImageWidget({
    super.key,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      NOT_FOUND_IMAGE,
      fit: BoxFit.cover,
      height: height,
      width: width ?? double.infinity,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }
        return Center(
          child: CircularProgressIndicator(
            color: AppColors.kBlue,
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
          ),
        );
      },
      errorBuilder: (
        BuildContext context,
        Object exception,
        StackTrace? stackTrace,
      ) {
        return SizedBox(
          height: height,
          width: double.infinity,
          child: const Center(child: Text('Image Error')),
        );
      },
    );
  }
}
