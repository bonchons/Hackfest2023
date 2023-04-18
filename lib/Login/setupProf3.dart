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
          title: Text('Set Up Your Profile'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Text(
              'Experience',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Credibility',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Upload your certificates to verify your credibility',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.file_upload),
                    onPressed: () {},
                  ),
                  Expanded(
                    child: Text(
                      'Add a new file',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Work Experience',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            TextField(
              controller: _experienceController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                hintText:
                    'You can write about your years of experience, industry, or skills.',
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
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Nav()));
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
        ));
  }
}
