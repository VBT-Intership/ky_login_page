import 'package:flutter/material.dart';

class EmailTextField extends StatefulWidget {
  EmailTextField({Key key}) : super(key: key);

  @override
  _EmailTextFieldState createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  final textController = TextEditingController();
  
  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }
  
  InputDecoration buildInputDecoration(String text) => InputDecoration(labelText: text);
  TextFormField buildEmailTextField() {
    return TextFormField(
        controller: textController,
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
