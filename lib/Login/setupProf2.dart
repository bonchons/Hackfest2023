import 'package:flutter/material.dart';
import 'package:hackfest2023/Login/setupProf3.dart';
import 'package:hackfest2023/constants.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: SetUpProfileScreen(),
      );
}

class SetUpProfileScreen extends StatefulWidget {
  @override
  _SetUpProfileScreenState createState() => _SetUpProfileScreenState();
}

class _SetUpProfileScreenState extends State<SetUpProfileScreen> {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _locationController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    _locationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: ColorConstants.offWhite,
        appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.transparent),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 20),
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
                Text('Personal Information',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1)),
                SizedBox(height: 8.0),
                //NAME
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15, bottom: 10),
                      child: Text('Name',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: ColorConstants.greyText)),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Text('Please enter your full name',
                          style: TextStyle(
                              fontSize: 12.0, color: ColorConstants.darkGrey)),
                    )
                  ],
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: ColorConstants.grey1,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide.none),
                      hintText: "Juan dela Cruz",
                      hintStyle: TextStyle(
                        fontSize: 12,
                        color: ColorConstants.darkGrey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => chatConvoPage()),
                      // );
                    },
                  ),
                ),
                //AGE
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15, bottom: 10),
                      child: Text('Age',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: ColorConstants.greyText)),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Text('Please enter your age number',
                          style: TextStyle(
                              fontSize: 12.0, color: ColorConstants.darkGrey)),
                    )
                  ],
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: ColorConstants.grey1,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide.none),
                      hintText: "25",
                      hintStyle: TextStyle(
                        fontSize: 12,
                        color: ColorConstants.darkGrey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15, bottom: 10),
                      child: Text('Location',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: ColorConstants.greyText)),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Text('Please enter your current city or province',
                          style: TextStyle(
                              fontSize: 12.0, color: ColorConstants.darkGrey)),
                    )
                  ],
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: ColorConstants.grey1,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide.none),
                      hintText: "Quezon City",
                      hintStyle: TextStyle(
                        fontSize: 12,
                        color: ColorConstants.darkGrey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 120.0),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ProfileSetupScreen()));
                    },
                    child:
                        Text('Confirm', style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      primary: ColorConstants.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      minimumSize: Size(double.infinity, 50.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
