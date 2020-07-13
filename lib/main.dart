import 'package:flutter/material.dart';
import 'view/view.dart';
import 'view/login_view.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      //home: View(),
      initialRoute: '/',
      routes: {
        '/': (context) => View()
        //'/login': (context) => LoginView()
      },
    );
  }
}