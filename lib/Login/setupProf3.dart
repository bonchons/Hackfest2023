import 'package:flutter/material.dart';
import 'package:hackfest2023/bnav.dart';
import 'package:hackfest2023/constants.dart';
import 'package:hackfest2023/Opportunities/volOppPage.dart';

class ProfileSetupScreen extends StatefulWidget {
  @override
  _ProfileSetupScreenState createState() => _ProfileSetupScreenState();
}

class _ProfileSetupScreenState extends State<ProfileSetupScreen> {
  final TextEditingController _experienceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.offWhite,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    child: Text(
                      'Set Up Profile',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 2,
                          fontFamily: 'Helvetica'),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Experience',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Text(
                    'Credibility',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: ColorConstants.greyText),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Upload your certificates to verify your credibility.',
                    style: TextStyle(
                        fontSize: 12.0, color: ColorConstants.greyText),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    enabled: false,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: ColorConstants.lightGrey,
                      hintText: "Select a file",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      'Add a new file',
                      style: TextStyle(
                          color: ColorConstants.green,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      'Work Experiences',
                      style: TextStyle(
                          color: ColorConstants.greyText,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'You can write about your years of experience, industry, or skills.',
                    style: TextStyle(
                        fontSize: 12.0, color: ColorConstants.greyText),
                  ),
                  SizedBox(height: 8.0),
                  TextField(
                    controller: _experienceController,
                    keyboardType: TextInputType.multiline,
                    maxLines: 8,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: ColorConstants.lightGrey,
                      hintText: 'I am capable of ...',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      'Skip this step',
                      style: TextStyle(
                          color: ColorConstants.green,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          minimumSize: Size(100, 45),
                          backgroundColor: ColorConstants.green,
                          shadowColor: Colors.transparent),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Nav()));
                      },
                      child: Text(
                        'Confirm',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ]),
          ),
        ));
  }
}
