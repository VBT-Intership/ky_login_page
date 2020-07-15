import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  PasswordTextField({Key key}) : super(key: key);

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {

  final textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  InputDecoration buildInputDecoration(String text) => InputDecoration(labelText: text);

  TextFormField buildPassFormField() {
    return TextFormField(
        controller: textController,
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