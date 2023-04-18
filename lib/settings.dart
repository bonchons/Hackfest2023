import 'package:flutter/material.dart';
import 'package:hackfest2023/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../Login/login.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    signUserOut() {
      FirebaseAuth.instance.signOut();
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    }

    return Scaffold(
      backgroundColor: ColorConstants.offWhite,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (context) => oppPage()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  width: 350,
                  height: 80,
                  child: Material(
                    elevation: 3,
                    color: Colors.white,
                    shadowColor: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Edit your profile',
                                  style: TextStyle(
                                    color: ColorConstants.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Icon, Name, Age, Location...',
                                  style: TextStyle(
                                    color: ColorConstants.msgColor,
                                  ),
                                )
                              ],
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 9,
                              child: Image.asset('assets/images/Next.png',
                                  fit: BoxFit.contain),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  signUserOut();
                },
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  width: 350,
                  height: 80,
                  child: Material(
                    elevation: 3,
                    color: Colors.white,
                    shadowColor: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 9,
                                  child: Image.asset(
                                      'assets/images/log-out.png',
                                      fit: BoxFit.contain),
                                ),
                                Text(
                                  'Log out',
                                  style: TextStyle(
                                    color: ColorConstants.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 9,
                              child: Image.asset('assets/images/Next.png',
                                  fit: BoxFit.contain),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
