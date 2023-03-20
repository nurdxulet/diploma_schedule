import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule/core/error/network_exception.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  /// Create an `Success` result with the given value
  const factory Result.success(T data) = _Success<T>;

  /// Create an `Failure` result with the given Exception
  const factory Result.failure(NetworkException error) = _Failure<T>;
}
