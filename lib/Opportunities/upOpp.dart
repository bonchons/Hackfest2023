import 'package:flutter/material.dart';
import 'package:hackfest2023/Login/setupProf2.dart';
import 'package:hackfest2023/constants.dart';
import 'package:hackfest2023/Opportunities/oppPage.dart';

class upOpp extends StatefulWidget {
  const upOpp({super.key});

  @override
  State<upOpp> createState() => _upOppState();
}

class _upOppState extends State<upOpp> {
  String name = "Red Alert Local Chapter";
  String difficulty = "High";
  String date = "11PM - 5AM Oct 25, 2022 ";
  String spots = "5 spots left";
  String location = "Quezon City";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.offWhite,
      appBar: AppBar(
        backgroundColor: ColorConstants.offWhite,
        shadowColor: Colors.transparent,
        leading: BackButton(color: ColorConstants.bgColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
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
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => oppPage()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  width: 350,
                  height: 150,
                  child: Material(
                    elevation: 3,
                    color: Colors.white,
                    shadowColor: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 0),
                        child: Row(
                          children: [
                            //---Logo

                            Container(
                              margin: EdgeInsets.only(right: 20, bottom: 10),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.black,
                                child: Image.asset('assets/images/RedAlert.png',
                                    fit: BoxFit.contain),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: 5, right: 5),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 9,
                                            child: Image.asset(
                                                'assets/images/tabler_calendar-exclamation.png',
                                                fit: BoxFit.contain),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            date,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Helvetica',
                                                color: ColorConstants.redText),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        //------------Location Icon
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: 5, right: 5),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 9,
                                            child: Image.asset(
                                                'assets/images/material-symbols_location-on.png',
                                                fit: BoxFit.contain),
                                          ),
                                        ),
                                        //------------Location
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            location,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Helvetica',
                                                color: ColorConstants.blueText),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: 5, top: 15),
                                          child: Text(
                                            name,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Helvetica',
                                                color: Colors.black),
                                          ),
                                        ),
                                        //-------Emergency Services
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            'Emergency Services',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Helvetica',
                                                color:
                                                    ColorConstants.textColor),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        //-----Difficulty
                                        Container(
                                          margin: EdgeInsets.only(bottom: 15),
                                          child: Text(
                                            'Difficulty: ',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Helvetica',
                                                color:
                                                    ColorConstants.textColor),
                                          ),
                                        ),
                                        //--------High
                                        Container(
                                          margin: EdgeInsets.only(bottom: 15),
                                          child: Text(
                                            difficulty,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Helvetica',
                                                color: ColorConstants.redText),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
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
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => oppPage()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  width: 350,
                  height: 150,
                  child: Material(
                    elevation: 3,
                    color: Colors.white,
                    shadowColor: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 0),
                        child: Row(
                          children: [
                            //---Logo

                            Container(
                              margin: EdgeInsets.only(right: 20, bottom: 10),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.black,
                                child: Image.asset('assets/images/RedAlert.png',
                                    fit: BoxFit.contain),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: 5, right: 5),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 9,
                                            child: Image.asset(
                                                'assets/images/tabler_calendar-exclamation.png',
                                                fit: BoxFit.contain),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            date,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Helvetica',
                                                color: ColorConstants.redText),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        //------------Location Icon
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: 5, right: 5),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 9,
                                            child: Image.asset(
                                                'assets/images/material-symbols_location-on.png',
                                                fit: BoxFit.contain),
                                          ),
                                        ),
                                        //------------Location
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            location,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Helvetica',
                                                color: ColorConstants.blueText),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: 5, top: 15),
                                          child: Text(
                                            name,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Helvetica',
                                                color: Colors.black),
                                          ),
                                        ),
                                        //-------Emergency Services
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            'Emergency Services',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Helvetica',
                                                color:
                                                    ColorConstants.textColor),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        //-----Difficulty
                                        Container(
                                          margin: EdgeInsets.only(bottom: 15),
                                          child: Text(
                                            'Difficulty: ',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Helvetica',
                                                color:
                                                    ColorConstants.textColor),
                                          ),
                                        ),
                                        //--------High
                                        Container(
                                          margin: EdgeInsets.only(bottom: 15),
                                          child: Text(
                                            difficulty,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Helvetica',
                                                color: ColorConstants.redText),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
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
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => oppPage()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  width: 350,
                  height: 150,
                  child: Material(
                    elevation: 3,
                    color: Colors.white,
                    shadowColor: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 0),
                        child: Row(
                          children: [
                            //---Logo

                            Container(
                              margin: EdgeInsets.only(right: 20, bottom: 10),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.black,
                                child: Image.asset('assets/images/RedAlert.png',
                                    fit: BoxFit.contain),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: 5, right: 5),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 9,
                                            child: Image.asset(
                                                'assets/images/tabler_calendar-exclamation.png',
                                                fit: BoxFit.contain),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            date,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Helvetica',
                                                color: ColorConstants.redText),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        //------------Location Icon
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: 5, right: 5),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 9,
                                            child: Image.asset(
                                                'assets/images/material-symbols_location-on.png',
                                                fit: BoxFit.contain),
                                          ),
                                        ),
                                        //------------Location
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            location,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Helvetica',
                                                color: ColorConstants.blueText),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: 5, top: 15),
                                          child: Text(
                                            name,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Helvetica',
                                                color: Colors.black),
                                          ),
                                        ),
                                        //-------Emergency Services
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            'Emergency Services',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Helvetica',
                                                color:
                                                    ColorConstants.textColor),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        //-----Difficulty
                                        Container(
                                          margin: EdgeInsets.only(bottom: 15),
                                          child: Text(
                                            'Difficulty: ',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Helvetica',
                                                color:
                                                    ColorConstants.textColor),
                                          ),
                                        ),
                                        //--------High
                                        Container(
                                          margin: EdgeInsets.only(bottom: 15),
                                          child: Text(
                                            difficulty,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Helvetica',
                                                color: ColorConstants.redText),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
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
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => oppPage()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  width: 350,
                  height: 150,
                  child: Material(
                    elevation: 3,
                    color: Colors.white,
                    shadowColor: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 0),
                        child: Row(
                          children: [
                            //---Logo

                            Container(
                              margin: EdgeInsets.only(right: 20, bottom: 10),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.black,
                                child: Image.asset('assets/images/RedAlert.png',
                                    fit: BoxFit.contain),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: 5, right: 5),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 9,
                                            child: Image.asset(
                                                'assets/images/tabler_calendar-exclamation.png',
                                                fit: BoxFit.contain),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            date,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Helvetica',
                                                color: ColorConstants.redText),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        //------------Location Icon
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: 5, right: 5),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 9,
                                            child: Image.asset(
                                                'assets/images/material-symbols_location-on.png',
                                                fit: BoxFit.contain),
                                          ),
                                        ),
                                        //------------Location
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            location,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Helvetica',
                                                color: ColorConstants.blueText),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: 5, top: 15),
                                          child: Text(
                                            name,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Helvetica',
                                                color: Colors.black),
                                          ),
                                        ),
                                        //-------Emergency Services
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            'Emergency Services',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Helvetica',
                                                color:
                                                    ColorConstants.textColor),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        //-----Difficulty
                                        Container(
                                          margin: EdgeInsets.only(bottom: 15),
                                          child: Text(
                                            'Difficulty: ',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Helvetica',
                                                color:
                                                    ColorConstants.textColor),
                                          ),
                                        ),
                                        //--------High
                                        Container(
                                          margin: EdgeInsets.only(bottom: 15),
                                          child: Text(
                                            difficulty,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Helvetica',
                                                color: ColorConstants.redText),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
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
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => oppPage()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  width: 350,
                  height: 150,
                  child: Material(
                    elevation: 3,
                    color: Colors.white,
                    shadowColor: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 0),
                        child: Row(
                          children: [
                            //---Logo

                            Container(
                              margin: EdgeInsets.only(right: 20, bottom: 10),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.black,
                                child: Image.asset('assets/images/RedAlert.png',
                                    fit: BoxFit.contain),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: 5, right: 5),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 9,
                                            child: Image.asset(
                                                'assets/images/tabler_calendar-exclamation.png',
                                                fit: BoxFit.contain),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            date,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Helvetica',
                                                color: ColorConstants.redText),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        //------------Location Icon
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: 5, right: 5),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 9,
                                            child: Image.asset(
                                                'assets/images/material-symbols_location-on.png',
                                                fit: BoxFit.contain),
                                          ),
                                        ),
                                        //------------Location
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            location,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Helvetica',
                                                color: ColorConstants.blueText),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: 5, top: 15),
                                          child: Text(
                                            name,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Helvetica',
                                                color: Colors.black),
                                          ),
                                        ),
                                        //-------Emergency Services
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            'Emergency Services',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Helvetica',
                                                color:
                                                    ColorConstants.textColor),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        //-----Difficulty
                                        Container(
                                          margin: EdgeInsets.only(bottom: 15),
                                          child: Text(
                                            'Difficulty: ',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Helvetica',
                                                color:
                                                    ColorConstants.textColor),
                                          ),
                                        ),
                                        //--------High
                                        Container(
                                          margin: EdgeInsets.only(bottom: 15),
                                          child: Text(
                                            difficulty,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Helvetica',
                                                color: ColorConstants.redText),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // GestureDetector(
              //     onTap: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //           builder: (context) => SetUpProfileScreen()));
              //     },
              //     child: Text('HAHA')),
            ],
          ),
        ),
      ),
    );
  }
}
