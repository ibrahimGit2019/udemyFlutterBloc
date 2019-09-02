class ValidationMixins {
  String validateEmail(String input) {
    if (!input.contains('@')) return 'False';
    return 'Success';
  }

  String validatePassword(String input) {
    if (input.length < 4) return 'False';
    return 'Success';
  }
}
