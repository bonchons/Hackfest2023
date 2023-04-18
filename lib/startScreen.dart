import 'package:flutter/material.dart';
import 'package:hackfest2023/constants.dart';
import 'package:hackfest2023/Login/login.dart';
import 'package:hackfest2023/Login/register.dart';

class startScreen extends StatelessWidget {
  const startScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String slogan = "Get Involve, To be Involved!";
    String desc =
        "Involve is an app where you can explore volunteer opportunities around your area. Be Involved today!";

    return Scaffold(
      backgroundColor: ColorConstants.offWhite,
      appBar: null,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 70),
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 30, top: 90),
                child: Image.asset('assets/images/logo2.png'),
              ),
            ),
            Text(
              slogan,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: ColorConstants.greyText),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Text(
                  desc,
                  style:
                      TextStyle(fontSize: 12, color: ColorConstants.greyText),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Login()));
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    minimumSize: Size(300, 45),
                    backgroundColor: ColorConstants.green,
                  ),
                  child: Text(
                    'Log in',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    minimumSize: Size(300, 45),
                    backgroundColor: ColorConstants.offWhite,
                  ),
                  child: Text(
                    'Sign up',
                    style: TextStyle(color: ColorConstants.green),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
