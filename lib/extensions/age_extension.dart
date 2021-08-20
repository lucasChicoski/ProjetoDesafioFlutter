extension AgeExtension on String {
  bool isAgeValid() {
    final RegExp regex =
        RegExp(r"[1-9][8-9]");
    return regex.hasMatch(this);
  }
}
