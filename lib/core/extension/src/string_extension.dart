extension StringExtension on String {
  bool emailValidator() {
    return RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9._]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(this);
  }

  bool numberValidator() {
    if (length == 11) {
      return RegExp(
        r'^[0-9]{11}$',
      ).hasMatch(this);
    }
    return RegExp(
      r'^[0-9]{10}$',
    ).hasMatch(this);
  }
}
