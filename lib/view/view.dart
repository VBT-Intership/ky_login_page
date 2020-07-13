import 'package:flutter/material.dart';
import 'package:ky_login_page/components/email_text_field.dart';
import 'package:ky_login_page/components/pass_text_field.dart';
import 'package:ky_login_page/components/forgot_field.dart';
import 'package:ky_login_page/view/login_view.dart';
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
    return Scaffold(
      body: Stack(
        children: <Widget>[
          buildGradientBackground(),
        Container(
          height: double.infinity,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 120.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildSigninText(),
                buildForm()
              ],
            ),
          ),
        )
        ],
      )
    );
  }

  Text buildSigninText() {
    return Text(
                "Sign In",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
                   ),
                );
  }

  Container buildGradientBackground() {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(232, 171, 2, 1),
            Color.fromRGBO(240, 200, 89, 1),
            Color.fromRGBO(184, 145, 37, 1),
          ])
        ),
      );
  }

  Form buildForm() {
    return Form(
      autovalidate: isAutoValidated,
      key: _state,
      child: Column(children: <Widget>[
        EmailTextField(),
        PasswordTextField(),
        ForgotPasswordField(),
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
        if(!_state.currentState.validate()) {
          setState(() => {this.isAutoValidated = true}),
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginView()),
        }      
      },
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Text("Login"),
      );
  }
  InputDecoration buildInputDecoration(String text) => InputDecoration(labelText: text);
}