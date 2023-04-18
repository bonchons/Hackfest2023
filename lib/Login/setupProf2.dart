import 'package:flutter/material.dart';
import 'package:hackfest2023/Login/setupProf3.dart';
import 'package:hackfest2023/constants.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Set Up Profile',
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
            title: Text('Set Up Profile'),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.transparent),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Personal Information',
                  style:
                      TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
              SizedBox(height: 8.0),
              Text('Please fill in the following information',
                  style: TextStyle(fontSize: 12.0)),
              SizedBox(height: 32.0),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(hintText: 'Name'),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'Age'),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _locationController,
                decoration: InputDecoration(hintText: 'Location'),
              ),
              SizedBox(height: 32.0),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProfileSetupScreen()));
                  },
                  child: Text('Confirm', style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: Size(double.infinity, 50.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
