import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackfest2023/Login/register.dart';
import 'package:hackfest2023/profilePage/profile.dart';

import '../Backend/authentication_service.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Authentication().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return profile();
        } else {
          return const Register();
        }
      },
    );
  }
}
