import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaselogin/screens/authentication/authentication.dart';
import 'package:firebaselogin/screens/homeScreen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);
    if (user != null) {
      return const HomeScreen();
    } else {
      return const Authentication();
    }
  }
}
