import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({Key key}) : super(key: key);
  InputDecoration buildInputDecoration(String text) => InputDecoration(labelText: text);
  
  TextFormField buildPassFormField() {
    return TextFormField(
        obscureText: true,
        decoration: buildInputDecoration("password"),
        validator: (val)  { return val.length > 0 ? null: "Enter your password.";},
      );
  }

  @override
  Widget build(BuildContext context) {
    return buildPassFormField();
  }
}