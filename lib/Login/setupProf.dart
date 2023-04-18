import 'package:flutter/material.dart';
import 'package:hackfest2023/constants.dart';
import 'package:hackfest2023/Login/setupProf2.dart';

class setupProfile extends StatefulWidget {
  const setupProfile({super.key});

  @override
  State<setupProfile> createState() => _setupProfileState();
}

class _setupProfileState extends State<setupProfile> {
  int _selectedAvatarIndex = -1;

  final List<String> _avatars = [
    'assets/images/Avatar-1.png',
    'assets/images/Avatar-2.png',
    'assets/images/Avatar-3.png',
    'assets/images/Avatar-4.png',
    'assets/images/Avatar-5.png',
    'assets/images/Avatar.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.offWhite,
      appBar: AppBar(
          // title: Text('Set Up Profile'),
          // centerTitle: true,
          // leading: BackButton(color: ColorConstants.bgColor),
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 60),
              child: Text(
                'Set Up Profile',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    fontFamily: 'Helvetica'),
              ),
            ),
            Text('Icon',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.greyText)),
            SizedBox(height: 8.0),
            Text('Select your appearance',
                style:
                    TextStyle(fontSize: 12.0, color: ColorConstants.greyText)),
            SizedBox(height: 16.0),
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: List.generate(
                  _avatars.length,
                  (index) => GestureDetector(
                        onTap: () {
                          setState(() => _selectedAvatarIndex = index);
                        },
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: CircleAvatar(
                            child: Image.asset(_avatars[index]),
                            radius: _selectedAvatarIndex == index ? 48.0 : 32.0,
                          ),
                        ),
                      )),
            ),
            SizedBox(height: 16.0),
            Container(
              margin: EdgeInsets.only(top: 160),
              child: Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: _selectedAvatarIndex != -1
                      ? () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SetUpProfileScreen()));
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(300, 45),
                    backgroundColor: ColorConstants.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text('Confirm'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
