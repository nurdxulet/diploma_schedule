import 'dart:core';

/// Iterable extensions
extension IterableX<E> on Iterable<E> {
  /// Returns map with index of element
  ///
  /// ```dart
  /// someIterable.mapIndexed((element, index) => log('$element at index: $index'))
  /// ```
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var index = 0;

    return map((E e) => f(e, index++));
  }

  /// Returns a new list containing the results of applying the given function to each element and its index in
  /// the original list.
  ///
  /// Args:
  ///   f (T Function(E e, int i)): A function that takes an element and an index and returns a value.
  List<T> mapIndexedToList<T>(T Function(E e, int i) f) {
    var index = 0;

    return map((E e) => f(e, index++)).toList();
  }

  /// Convert a Stream to a List by applying a function to each element.
  ///
  /// Args:
  ///   convert (R Function(E)): A function that takes an element of type E and returns a value of type R.
  List<R> mapToList<R>(R Function(E) convert) => map(convert).toList();
}

extension IterableModifier<E> on Iterable<E> {
  E? firstWhereOrNull(bool Function(E) test) => cast<E?>().firstWhere((v) => v != null && test(v), orElse: () => null);
}
