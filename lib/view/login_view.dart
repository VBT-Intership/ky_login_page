import 'package:flutter/material.dart';
import 'package:ky_login_page/models/user.dart';

class LoginView extends StatelessWidget {
  final User user;
  const LoginView({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String user = this.user.email;
    return Scaffold(
      appBar: AppBar(),
      body: Stack(children: <Widget>[
        buildGradientBackground(),
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Center(
            child: Column(children: <Widget>[
              Text(
                "Welcome $user",
                style: TextStyle(
                  fontSize: 50.0
                  ),
              )
            ],),
          ),
        )        
      ],)
    );
  }

  Container buildGradientBackground() {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.teal
            ]
          )
        ),
      );
  }
}