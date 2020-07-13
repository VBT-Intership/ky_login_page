import 'package:flutter/material.dart';

class ForgotPasswordField extends StatelessWidget {
  const ForgotPasswordField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => {print("Forgot pressed.")},
        child: Text(
          "Forgot password?",
        )
      )
    );
  }
}