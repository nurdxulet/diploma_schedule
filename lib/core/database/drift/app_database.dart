import 'package:drift/drift.dart';
import 'package:schedule/core/database/drift/connection/open_connection_stub.dart'
    if (dart.library.io) 'package:schedule/core/database/drift/connection/open_connection_io.dart'
    if (dart.library.html) 'package:schedule/core/database/drift/connection/open_connection_web.dart'
    as connection;

part 'app_database.g.dart';


@DriftDatabase()
class AppDatabase extends _$AppDatabase {
  AppDatabase({required String name}) : super(connection.openConnection(name));

  @override
  int get schemaVersion => 1;
}
