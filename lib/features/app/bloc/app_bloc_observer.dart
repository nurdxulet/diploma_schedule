import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

const _tag = 'AppBlocObserver';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)', name: _tag);
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)', name: _tag);
    super.onError(bloc, error, stackTrace);
  }
}
