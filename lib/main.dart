import 'package:flutter/material.dart';
import 'package:hackfest2023/Opportunities/volOppPage.dart';
import 'package:hackfest2023/constants.dart';
import 'package:hackfest2023/profilePage/profile.dart';
import 'package:hackfest2023/Login/login.dart';
import 'package:hackfest2023/Login/register.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Involve',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: ColorConstants.bgColor),
        scaffoldBackgroundColor: ColorConstants.bgColor,
      ),
      // home: const profile(),
      home: const volOppPage(),
    );
  }
}
