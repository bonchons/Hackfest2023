import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hackfest2023/Opportunities/volOppPage.dart';

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
                              const EdgeInsets.only(left: 26.0, bottom: 0.5),
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
                                  fontSize: 20,
                                  //  fontFamily: 'Questrial',
                                  color: Colors.white,
                                ),
                              ),

                              // --- Hours  text
                              Text(
                                ' 345h',
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
                    height: 90,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 26.0, top: 30),
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
                width: 350,
                height: 150,
                padding: const EdgeInsets.only(left: 5, bottom: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => volOppPage()),
                    );
                  },
                  child: Material(
                    elevation: 2,
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
                          height: 345,
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
                                        Text(
                                          ' See All',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Questrial',
                                            color: Colors.green,
                                          ),
                                        ),
                                      ],
                                    )),

                                // ----- BOX!
                                Container(
                                  width: 350,
                                  height: 150,
                                  padding: const EdgeInsets.only(left: 5),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => volOppPage()),
                                      );
                                    },
                                    child: Material(
                                      elevation: 2,
                                      color: Colors.white,
                                      shadowColor: Colors.black,
                                      borderRadius: BorderRadius.circular(20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          CircleAvatar(
                                            radius: 40,
                                            backgroundColor: Colors.blue,
                                            // child: Image.asset('assets/images/RedAlert.png',
                                            //     fit: BoxFit.contain),
                                          ),
                                          SizedBox(width: 20),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              // --- Date text
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20.0, right: 26.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Date:',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 13,
                                                        fontFamily: 'Questrial',
                                                        color: const Color(
                                                            0xFF6E7191),
                                                      ),
                                                    ),
                                                    Text(
                                                      ' 11PM - 5AM October 25, 2022',
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        fontFamily: 'Questrial',
                                                        color: const Color(
                                                            0xFF6E7191),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              // --- Location text
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5.0, right: 26.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Location',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 13,
                                                        fontFamily: 'Questrial',
                                                        color: const Color(
                                                            0xFF6E7191),
                                                      ),
                                                    ),
                                                    Text(
                                                      ' Quezon City',
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        fontFamily: 'Questrial',
                                                        color: const Color(
                                                            0xFF6E7191),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              // --- name of Org
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 15.0, right: 26.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Red Alert Local Chapter',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 13,
                                                        fontFamily: 'Questrial',
                                                        color: const Color(
                                                            0xFF6E7191),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              // --- Service
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5.0, right: 26.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Emergency Services',
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        fontFamily: 'Questrial',
                                                        color: const Color(
                                                            0xFF6E7191),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              // --- Difficulty text
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5.0, right: 26.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Difficulty: ',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 13,
                                                        fontFamily: 'Questrial',
                                                        color: const Color(
                                                            0xFF6E7191),
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
                                            ], // stop here
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
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
