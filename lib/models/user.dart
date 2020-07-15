class User {
  String _email;
  String _password;

  User() {

  }

  String get email {
    return this._email;
  }

  String get password {
    return this._password;
  }
  
  set email(String email) {
    this._email = email;
  }

  set password(String password) {
    this._password = password;
  }
}