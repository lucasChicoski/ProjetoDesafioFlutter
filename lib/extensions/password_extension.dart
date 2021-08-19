extension PassWordExtension on String {
  bool isPassWordValid() {
    final RegExp regex =
        RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$");
    return regex.hasMatch(this);
  }
}
