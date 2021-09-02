import 'package:firebaselogin/service/authService/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<AuthServices>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anasayfa"),
        actions: [
          IconButton(
            onPressed: () async => await loginProvider.logout(),
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
    );
  }
}
