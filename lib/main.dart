import 'package:flutter/material.dart';
import 'package:hackfest2023/Backend/auth_page.dart';
// import 'package:hackfest2023/Login/widget_tree.dart';
import 'package:hackfest2023/Opportunities/volOppPage.dart';
import 'package:hackfest2023/constants.dart';
import 'package:hackfest2023/firebase_options.dart';
import 'package:hackfest2023/profilePage/profile.dart';
import 'package:hackfest2023/Login/login.dart';
import 'package:hackfest2023/Login/register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hackfest2023/bnav.dart';
import 'package:hackfest2023/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Involve',
      theme: ThemeData(
        scaffoldBackgroundColor: ColorConstants.bgColor,
        appBarTheme: AppBarTheme(color: ColorConstants.bgColor),
      ),
      home: Nav(),
    );
  }
}
