import 'package:flutter/material.dart';
import 'package:hackfest2023/Opportunities/volOppPage.dart';
import 'package:hackfest2023/chat/chatpage.dart';
import 'package:hackfest2023/constants.dart';
import 'package:hackfest2023/login/login.dart';
import 'package:hackfest2023/login/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: ColorConstants.mainColor),
      ),
      // home: const volOppPage(),
      // home: const HomeChatPage(),
      home: const Register(),
    );
  }
}
