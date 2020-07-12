import 'package:flutter/material.dart';
import 'package:ky_login_page/components/email_text_field.dart';
import 'package:ky_login_page/components/pass_text_field.dart';

class View extends StatefulWidget {
  View({Key key}) : super(key: key);

  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {
  GlobalKey<FormState> _state = GlobalKey();
  bool isAutoValidated = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        //appBar: AppBar(),
        body: Center(
          child: buildForm()
        )
      )
    );
  }

  Form buildForm() {
    return Form(
      autovalidate: isAutoValidated,
      key: _state,
      child: Column(children: <Widget>[
        EmailTextField(),
        PasswordTextField(),
        //buildEmailTextField(),
        //buildPassFormField(),
        buildLoginButton()
      ],
      ),
    );
  }

  RaisedButton buildLoginButton() {
    return RaisedButton(
        onPressed: () => {
          if(!_state.currentState.validate())
            setState(() => {isAutoValidated = true})
        },
        child: Icon(Icons.send),
      );
  }

  TextFormField buildPassFormField() {
    return TextFormField(
        decoration: buildInputDecoration("password"),
        validator: (val)  { return val.length > 8 ? null: "Enter a strong password.";},
      );
  }

  TextFormField buildEmailTextField() {
    return TextFormField(
        decoration: buildInputDecoration("e-mail"),
        validator: (val)  { return val.contains("@") ? null: "Enter a valid e-mail";},
      );
  }

  InputDecoration buildInputDecoration(String text) => InputDecoration(labelText: text);
}