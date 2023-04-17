import 'package:flutter/material.dart';
import 'package:hackfest2023/constants.dart';

class volOppPage extends StatefulWidget {
  const volOppPage({super.key});

  @override
  State<volOppPage> createState() => _volOppPageState();
}

class _volOppPageState extends State<volOppPage> {
  String name = "Red Alert - \nLocal Chapter";
  String difficulty = "High";
  String date = "11PM - 5AM Oct 25, 2022 ";
  String spots = "5 spots left";
  //----
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Text('VOLUNTEERING OPPORTUNITIES',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      letterSpacing: 1,
                      color: Colors.white)), //volunteering opportunities
            ),
            //---RECTANGLE
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 800,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorConstants.offWhite,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: ColorConstants.offWhite),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: ColorConstants.lightGrey,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Search",
                            hintStyle:
                                TextStyle(color: ColorConstants.darkGrey),
                            prefixIcon: Icon(Icons.search),
                            prefixIconColor: ColorConstants.darkGrey,
                          ),
                        ), //search bar--------------------------
                        //----
                        GestureDetector(
                          onTap: () {},
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: 'Helvetica',
                                                      color: Colors.black),
                                                ),
                                              ),
                                              //-------Emergency Services
                                              Container(
                                                margin:
                                                    EdgeInsets.only(bottom: 5),
                                                child: Text(
                                                  'Emergency Services',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'Helvetica',
                                                      color: ColorConstants
                                                          .textColor),
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
                                                  color:
                                                      ColorConstants.redText),
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
                                                margin:
                                                    EdgeInsets.only(bottom: 5),
                                                child: Text(
                                                  'Location',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'Helvetica',
                                                      color: ColorConstants
                                                          .blueText),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
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
                                                  color:
                                                      ColorConstants.redText),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                bottom: 5, left: 70),
                                            child: Text(
                                              spots,
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'Helvetica',
                                                  color:
                                                      ColorConstants.redText),
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
    );
  }
}
