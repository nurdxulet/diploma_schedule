// import 'package:flutter/material.dart';
// import 'package:l/l.dart';
// import 'package:metry/core/utils/error_util.dart';
// import 'package:stack_trace/stack_trace.dart';

// extension on DateTime {
//   String get formatted => <int>[hour, minute, second].map(Logger._timeFormat).join(':');
// }

// extension on LogLevel {
//   String get emoji => maybeWhen(
//         shout: () => '❗️',
//         error: () => '🚫',
//         warning: () => '⚠️',
//         info: () => '💡',
//         debug: () => '🐞',
//         orElse: () => '',
//       );
// }

// mixin Logger {
//   static const LogOptions _logOptions = LogOptions(
//     printColors: true,
//     handlePrint: true,
//     outputInRelease: false,
//     messageFormatting: _formatLoggerMessage,
//   );

//   static String _timeFormat(int input) => input.toString().padLeft(2, '0');

//   static String _formatLoggerMessage(
//     Object message,
//     LogLevel logLevel,
//     DateTime now,
//   ) =>
//       '${logLevel.emoji} ${now.formatted} | $message';

//   static String _formatError(
//     String type,
//     String error,
//     StackTrace? stackTrace,
//   ) {
//     final trace = stackTrace ?? StackTrace.current;

//     final buffer = StringBuffer(type)
//       ..write(' error: ')
//       ..writeln(error)
//       ..writeln('Stack trace:')
//       ..write(Trace.from(trace).terse);

//     return buffer.toString();
//   }

//   /// Ошибки зоны в котором запускается приложение
//   static Future<void> logZoneError(
//     Object e,
//     StackTrace s,
//   ) async {
//     l.e(_formatError('Top-level', e.toString(), s), s);

//     await ErrorUtil.logError(e, stackTrace: s);
//   }

//   /// Ошибки Flutter'a внутри зоны, по дефолту они не попадают в ошибки зоны
//   static Future<void> logFlutterError(FlutterErrorDetails details) async {
//     final stackTrace = details.stack;
//     l.e(
//       _formatError('Flutter', details.exceptionAsString(), stackTrace),
//       stackTrace,
//     );

//     await ErrorUtil.onFlutterError(details);
//   }

//   static T runLogging<T>(T Function() body) => l.capture(body, _logOptions);
// }
