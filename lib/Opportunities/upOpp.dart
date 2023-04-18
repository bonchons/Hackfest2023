import 'package:flutter/material.dart';
import 'package:hackfest2023/Login/setupProf2';
import 'package:hackfest2023/constants.dart';

class upOpp extends StatefulWidget {
  const upOpp({super.key});

  @override
  State<upOpp> createState() => _upOppState();
}

class _upOppState extends State<upOpp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.offWhite,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Text(
                'Upcoming Opportunities',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SetUpProfileScreen()));
                },
                child: Text('HAHA')),
          ],
        ),
      ),
    );
  }
}
