import 'package:flutter/material.dart';
import 'package:hackfest2023/constants.dart';
import 'package:hackfest2023/Opportunities/oppPage.dart';

class orgPage extends StatefulWidget {
  const orgPage({super.key});

  @override
  State<orgPage> createState() => _orgPageState();
}

class _orgPageState extends State<orgPage> {
  String name = "Red Alert - \nLocal Chapter";
  String difficulty = "High";
  String date = "11PM - 5AM Oct 25, 2022 ";
  String spots = "5 spots left";
  String location = "Quezon City";
  String whatDo =
      "Red Alert Local Chapter is a community-based volunteering program of a non-profit organization. The Chapter helps the local government unit enable and elevate communities to reduce disaster risk.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.offWhite,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.black,
                          child: Image.asset('assets/images/settings.png',
                              fit: BoxFit.contain),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              name,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Questrial',
                                  color: Colors.black),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Emergency Services',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Questrial',
                                  color: ColorConstants.textColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10, top: 25),
                alignment: Alignment.centerLeft,
                child: Text(
                  "What we do",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Helvetica',
                      color: ColorConstants.grey2),
                ),
              ),
              Container(
                child: Text(
                  whatDo,
                  style: TextStyle(
                      fontSize: 12,
                      letterSpacing: 1,
                      fontFamily: 'Helvetica',
                      color: ColorConstants.greyText),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10, top: 25),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Our Team",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Helvetica',
                      color: ColorConstants.grey2),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 35.0,
                        backgroundColor: Colors.grey,
                        // child: Image.asset(logo[index],
                        //     fit: BoxFit.contain),
                      ),
                      Text(
                        'Name',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.grey2,
                        ),
                      ),
                      Text(
                        'Position',
                        style: TextStyle(color: ColorConstants.msgColor),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 35.0,
                        backgroundColor: Colors.grey,
                        // child: Image.asset(logo[index],
                        //     fit: BoxFit.contain),
                      ),
                      Text(
                        'Name',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.grey2,
                        ),
                      ),
                      Text(
                        'Position',
                        style: TextStyle(color: ColorConstants.msgColor),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 35.0,
                        backgroundColor: Colors.grey,
                        // child: Image.asset(logo[index],
                        //     fit: BoxFit.contain),
                      ),
                      Text(
                        'Name',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.grey2,
                        ),
                      ),
                      Text(
                        'Position',
                        style: TextStyle(color: ColorConstants.msgColor),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Opportunities for you',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => oppPage()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      width: 350,
                      height: 170,
                      child: Material(
                        elevation: 3,
                        color: Colors.white,
                        shadowColor: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //-------Red Alert - Local Chapter
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: 5, right: 10),
                                          child: Text(
                                            name,
                                            style: TextStyle(
                                                fontSize: 16,
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
                                    //---Logo

                                    Container(
                                      child: CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.black,
                                        child: Image.asset(
                                            'assets/images/settings.png',
                                            fit: BoxFit.contain),
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
                                            color: ColorConstants.textColor),
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

                                Column(
                                  children: [
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
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(bottom: 5, right: 5),
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
                                    Container(
                                      margin:
                                          EdgeInsets.only(bottom: 5, left: 70),
                                      child: Text(
                                        spots,
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
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => oppPage()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      width: 350,
                      height: 170,
                      child: Material(
                        elevation: 3,
                        color: Colors.white,
                        shadowColor: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //-------Red Alert - Local Chapter
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: 5, right: 10),
                                          child: Text(
                                            name,
                                            style: TextStyle(
                                                fontSize: 16,
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
                                    //---Logo

                                    Container(
                                      child: CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.black,
                                        child: Image.asset(
                                            'assets/images/settings.png',
                                            fit: BoxFit.contain),
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
                                            color: ColorConstants.textColor),
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

                                Column(
                                  children: [
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
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(bottom: 5, right: 5),
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
                                    Container(
                                      margin:
                                          EdgeInsets.only(bottom: 5, left: 70),
                                      child: Text(
                                        spots,
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
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
