class Password {
  String? _password = '';

  Password({required String password}) : _password = password;

  String get password {
    return _password ?? '';
  }

  set password(String newPassword) {
    _password = newPassword;
  }

  bool isValid() {
    return (
      ((_password?.length ?? 0) >= 8 && (_password?.length ?? 0) <= 16) &&
      (_password?.contains(RegExp(r'[a-z]')) ?? false) &&
      (_password?.contains(RegExp(r'[A-Z]')) ?? false) &&
      (_password?.contains(RegExp(r'[0-9]')) ?? false)
    );
  }

  @override
  String toString() {
    return ('Your Password is: ${_password ?? 'None'}');
  }
}