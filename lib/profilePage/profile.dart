import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hackfest2023/Opportunities/upOpp.dart';
import 'package:hackfest2023/Opportunities/volOppPage.dart';
import 'package:hackfest2023/Opportunities/oppPage.dart';
import 'package:hackfest2023/orgPage.dart';

import '../Login/login.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  final List<String> items = List.generate(5, (index) => "Item $index");
  final List<String> name = [
    'Red Alert',
    'Safety Check',
    'Bayanihan',
    'Red Alert',
    'Safety Check'
  ];

  void singUserOut() {
    FirebaseAuth.instance.signOut();
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: singUserOut, icon: Icon(Icons.logout))],
        // backgroundColor: const Color(0xFF0079BD),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Column(
                children: [
                  // --- Welcome text
                  Container(
                    //color: const Color(0xFF0079BD),
                    width: 550,
                    height: MediaQuery.of(context).size.height * 0.125,
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 25.0, bottom: 0.5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // --- Welcome text
                              Text(
                                'Welcome, Julia!',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  //  fontFamily: 'Questrial',
                                  color: Colors.white,
                                ),
                              ),

                              // --- Hours Volunteered text

                              Text(
                                ' Hours Volunteered',
                                style: TextStyle(
                                  fontSize: 18,
                                  //  fontFamily: 'Questrial',
                                  color: Colors.white,
                                ),
                              ),

                              // --- Hours  text
                              Text(
                                ' 345h',
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Questrial',
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(width: 30),
                      ],
                    ),
                  ),
                ], // stop here
              ),

              // Your opportunity text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 550,
                    height: 75,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 26.0, top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // --- Your Opp text
                              Text(
                                'YOUR OPPORTUNITY',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Questrial',
                                ),
                              ),
                              // --- Date text
                              Text(
                                'October 25, 2022',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: 'Questrial',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // --- OppBox
              Container(
                margin:
                    EdgeInsets.only(top: 0, left: 10, bottom: 15, right: 10),
                width: 350,
                height: 150,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => oppPage()),
                    );
                  },
                  child: Material(
                    elevation: 3,
                    color: Colors.white,
                    shadowColor: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.blue,
                          // child: Image.asset('assets/images/RedAlert.png',
                          //     fit: BoxFit.contain),
                        ),
                        SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // --- Date text
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20.0, right: 26.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Date:',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      fontFamily: 'Questrial',
                                      color: const Color(0xFF6E7191),
                                    ),
                                  ),
                                  Text(
                                    ' 11PM - 5AM October 25, 2022',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Questrial',
                                      color: const Color(0xFF6E7191),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // --- Location text
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, right: 26.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Location',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      fontFamily: 'Questrial',
                                      color: const Color(0xFF6E7191),
                                    ),
                                  ),
                                  Text(
                                    ' Quezon City',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Questrial',
                                      color: const Color(0xFF6E7191),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // --- name of Org
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, right: 26.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Red Alert Local Chapter',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      fontFamily: 'Questrial',
                                      color: const Color(0xFF6E7191),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // --- Service
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, right: 26.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Emergency Services',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Questrial',
                                      color: const Color(0xFF6E7191),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // --- Difficulty text
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, right: 26.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Difficulty: ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      fontFamily: 'Questrial',
                                      color: const Color(0xFF6E7191),
                                    ),
                                  ),
                                  Text(
                                    ' High',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Questrial',
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),

// --- LOGO
                          ], // stop here
                        ),
                      ],
                    ),
                  ),
                ),
              ),

// ----- start of white part!
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 400,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
// --- UPCOMING OPP TEXT
                                Container(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Upcoming Opportunities',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            fontFamily: 'Questrial',
                                            color: Colors.black,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => upOpp(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            ' See All',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: 'Questrial',
                                              color: Colors.green,
                                            ),
                                          ),
                                        )
                                      ],
                                    )),

                                // ----- BOX!
                                Container(
                                  height: 180.0,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Column(
                                          children: <Widget>[
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          oppPage()),
                                                );
                                              }, // should not be moved
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                    top: 0,
                                                    left: 5,
                                                    bottom: 15,
                                                    right: 10),
                                                width: 350,
                                                height: 150,
                                                child: Material(
                                                  elevation: 3,
                                                  color: Colors.white,
                                                  shadowColor: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      CircleAvatar(
                                                        radius: 40,
                                                        backgroundColor:
                                                            Colors.blue,
                                                        // child: Image.asset(
                                                        //     'assets/images/RedAlert.png',
                                                        //     fit: BoxFit.contain),
                                                      ),
                                                      SizedBox(width: 20),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
// --- Date text
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 20.0,
                                                                    right:
                                                                        26.0),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  'Date:',
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        13,
                                                                    fontFamily:
                                                                        'Questrial',
                                                                    color: const Color(
                                                                        0xFF6E7191),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  ' 11PM - 5AM October 25, 2022',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    fontFamily:
                                                                        'Questrial',
                                                                    color: const Color(
                                                                        0xFF6E7191),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          // --- Location text
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 5.0,
                                                                    right:
                                                                        26.0),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  'Location',
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        13,
                                                                    fontFamily:
                                                                        'Questrial',
                                                                    color: const Color(
                                                                        0xFF6E7191),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  ' Quezon City',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    fontFamily:
                                                                        'Questrial',
                                                                    color: const Color(
                                                                        0xFF6E7191),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),

                                                          // --- name of Org
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 15.0,
                                                                    right:
                                                                        26.0),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  'Red Alert Local Chapter',
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        13,
                                                                    fontFamily:
                                                                        'Questrial',
                                                                    color: const Color(
                                                                        0xFF6E7191),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),

                                                          // --- Service
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 5.0,
                                                                    right:
                                                                        26.0),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  'Emergency Services',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    fontFamily:
                                                                        'Questrial',
                                                                    color: const Color(
                                                                        0xFF6E7191),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),

                                                          // --- Difficulty text
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 5.0,
                                                                    right:
                                                                        26.0),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  'Difficulty: ',
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        13,
                                                                    fontFamily:
                                                                        'Questrial',
                                                                    color: const Color(
                                                                        0xFF6E7191),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  ' High',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    fontFamily:
                                                                        'Questrial',
                                                                    color: Colors
                                                                        .red,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ], // should not be moved
                                        ),
                                      );
                                    },
                                  ),
                                ), //end of uppOpp box container

                                // --- START OF YOUR ORG TEXT
                                Container(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Your Organizations',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            fontFamily: 'Questrial',
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    )), // end of text container

                                // --- CIRCLES START
                                Container(
                                  height: 130.0,
                                  child: ListView.builder(
                                    padding: EdgeInsets.only(left: 0.0, top: 5),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: items.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.0, vertical: 10.0),
                                        child: Column(
                                          children: <Widget>[
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          orgPage()),
                                                );
                                              },
                                              child: Material(
                                                  child: CircleAvatar(
                                                    radius: 40.0,
                                                    backgroundColor:
                                                        Colors.white,
                                                    // child: Image.asset(logo[index],
                                                    //     fit: BoxFit.contain),
                                                  ),
                                                  elevation: 3,
                                                  shape: const CircleBorder(
                                                      side: BorderSide.none)),
                                            ),
                                            SizedBox(height: 6.0),
                                            Text(
                                              name[index], // name of org
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ], //stop here
          ),
        ),
      ),
    );
  }
}
