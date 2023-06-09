import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackfest2023/Login/login.dart';
import 'package:hackfest2023/bnav.dart';
import 'package:hackfest2023/startScreen.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Nav();
          } else {
            return startScreen();
          }
        },
      ),
    );
  }
}
