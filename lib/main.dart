import 'package:flutter/material.dart';
import 'package:hackfest2023/Opportunities/volOppPage.dart';
import 'package:hackfest2023/constants.dart';
import 'package:hackfest2023/profilePage/profile.dart';
import 'package:hackfest2023/Login/login.dart';
import 'package:hackfest2023/Login/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: ColorConstants.bgColor),
        scaffoldBackgroundColor: ColorConstants.bgColor,
      ),
      // home: const profile(),
      home: const volOppPage(),
    );
  }
}
