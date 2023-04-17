import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hackfest"),
        backgroundColor: const Color(0xFF0079BD),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // --- Welcome text
                  Container(
                    color: const Color(0xFF0079BD),
                    width: 550,
                    height: MediaQuery.of(context).size.height * 0.035,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Text(
                            'Welcome, Julia!',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Questrial',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // --- Hours Volunteered text
                  Container(
                    color: const Color(0xFF0079BD),
                    width: 550,
                    height: MediaQuery.of(context).size.height * 0.110,
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 26.0, bottom: 0.5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Hours Volunteered',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Questrial',
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '345h',
                                style: TextStyle(
                                  fontSize: 43,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Questrial',
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ], // stop here
              )
            ]),
      ),
    );
  }
}
