import 'package:schedule/features/app/logic/main_runner.dart';
import 'package:schedule/features/app/model/async_app_dependencies.dart';
import 'package:schedule/features/app/view/schedule_app.dart';

Future<void> main() => MainRunner.run<AsyncAppDependencies>(
      asyncDependencies: AsyncAppDependencies.obtain,
      appBuilder: (dependencies) => ScheduleApp(
        sharedPreferences: dependencies.sharedPreferences,
        packageInfo: dependencies.packageInfo,
      ),
    );
