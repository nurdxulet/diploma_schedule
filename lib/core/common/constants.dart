// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

const NOT_FOUND_IMAGE =
    'https://cdn.shopify.com/shopifycloud/shopify/assets/no-image-2048-5e88c1b20e087fb7bbe9a3771824e743c244f437e4f8ba93bbf7b11b53f7824c_600x600.gif';

Widget refreshClassicHeader(BuildContext context) {
  return const ClassicHeader(
    // completeText: context.localized.successfullyUpdated,
    // releaseText: context.localized.update,
    // idleText: context.localized.pullDownToRefresh,
    // failedText: context.localized.unknownError,
    // refreshingText: context.localized.updateDotDotDot,
  );
}

Widget refreshClassicFooter(BuildContext context) {
  return const ClassicFooter(
    // completeText: 'Успешно обновлено!',
    // releaseText: 'Обновить!',
    idleText: '',
    // failedText: context.localized.unknownError,
    // loadingText: context.localized.uploadingDotDotDot,
    // canLoadingText: context.localized.pullUpToLoadTheData,
    idleIcon: null,
  );
}
