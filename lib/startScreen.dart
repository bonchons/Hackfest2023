import 'package:flutter/material.dart';
import 'package:hackfest2023/constants.dart';
import 'package:hackfest2023/Login/login.dart';
import 'package:hackfest2023/Login/register.dart';

class startScreen extends StatelessWidget {
  const startScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.offWhite,
      appBar: null,
      body: Column(
        children: [
          Text(
            'lorem ipsum lorem ipsum',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: ColorConstants.greyText),
          ),
          Container(
            child: OutlinedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Login()));
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                minimumSize: Size(100, 45),
                backgroundColor: ColorConstants.green,
              ),
              child: Text(
                'Log in',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            child: OutlinedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Register()));
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                minimumSize: Size(100, 45),
                backgroundColor: ColorConstants.offWhite,
              ),
              child: Text(
                'Sign up',
                style: TextStyle(color: ColorConstants.green),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
