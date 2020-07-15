import 'package:flutter/material.dart';
import 'package:ky_login_page/components/email_text_field.dart';
import 'package:ky_login_page/components/pass_text_field.dart';
import 'package:ky_login_page/components/forgot_field.dart';
import 'package:ky_login_page/view/login_view.dart';
import 'package:ky_login_page/models/user.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<HomeView> {
  final textController = TextEditingController();
  final User user = new User();
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
                  fontSize: 40.0,
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
            Colors.blue,
            Colors.teal
          ])
        ),
      );
  }

  Form buildForm() {
    return Form(
      autovalidate: isAutoValidated,
      key: _state,
      child: Column(children: <Widget>[
        EmailasdsaTextField(),
        PasswordTextField(),
        ForgotPasswordField(),
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
        },
        if(_state.currentState.validate()) {
          this.user.email = "email",
          this.user.password = "pass",
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginView(user: this.user)
            )
          )
        }
      },
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Text("Login"),
      );
  }
  InputDecoration buildInputDecoration(String text) => InputDecoration(labelText: text);
}