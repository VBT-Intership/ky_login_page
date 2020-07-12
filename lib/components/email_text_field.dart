import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({Key key}) : super(key: key);
  InputDecoration buildInputDecoration(String text) => InputDecoration(labelText: text);

  TextFormField buildEmailTextField() {
    return TextFormField(
        decoration: buildInputDecoration("e-mail"),
        validator: (val)  {
          RegExp r = new RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
           return val.contains(r) ? null: "Enter a valid e-mail";
           },
      );
  }

  @override
  Widget build(BuildContext context) {
    return buildEmailTextField();
  }
}