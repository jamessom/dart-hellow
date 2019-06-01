class ValidationMixin {
  String emailValidation(String value) {
    if (!value.contains('@')) {
      return 'Please enter a valid email.';
    }

    return null;
  }

  String passValidation(String value) {
    if (value.length < 4) {
      return 'Password must be at least 4 characters';
    }

    return null;
  }
}