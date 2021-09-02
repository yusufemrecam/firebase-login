import 'package:firebaselogin/screens/authentication/login.dart';
import 'package:firebaselogin/screens/authentication/register.dart';
import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {

  bool isToggle = false;

  void toggleScreen() {
    setState(() {
      isToggle = !isToggle;
    });
  }

  @override
  Widget build(BuildContext context) {

    if(isToggle==false) {
      return Register(toggleScreen: toggleScreen);
    }else{
     return Login(toggleScreen: toggleScreen);
    }
  }
}
