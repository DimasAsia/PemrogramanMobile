import 'package:flutter/material.dart';
import 'package:viewapp/app/widget/login.dart';
import 'register.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  bool showLoginPage = true;

  void togglescreen(){
    setState((){
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage){
      return loginPage(showRegisterPage: togglescreen);
    } else {
      return RegisterPage(showLoginPage: togglescreen);
    }
  }
}
