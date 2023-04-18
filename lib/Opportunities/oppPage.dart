import 'package:flutter/material.dart';
import 'package:hackfest2023/constants.dart';

class oppPage extends StatefulWidget {
  const oppPage({super.key});

  @override
  State<oppPage> createState() => _oppPageState();
}

class _oppPageState extends State<oppPage> {
  String name = "Red Alert - \nLocal Chapter";
  String difficulty = "High";
  String date = "11PM - 5AM Oct 25, 2022 ";
  String spots = "5 spots left";
  String hours = "100 hours";
  String location = "Quezon City";
  String whatDo =
      "As a volunteer, you will be providing on-scene patient care and treatment, and assist transporting patients to medical facilities. ";
  String discussion =
      "Chat with your fellow volunteers below. Get to know, ask questions, or verify details.";
  //----
  String btnText = "Volunteer";
  bool cancel = false;

  List<Color> _colors = <Color>[
    ColorConstants.redText,
    ColorConstants.offWhite
  ];

  int _currentColorIndex = 0;

  void _incrementColorIndex() {
    setState(() {
      if (_currentColorIndex < _colors.length - 1) {
        _currentColorIndex++;
      } else {
        _currentColorIndex = 0;
      }
    });
  }

  setCancelText() {
    btnText = "Cancel Volunteer";
    if (cancel) {
      cancelText();
    }
  }

  volText() {
    setState(() {
      btnText = 'Volunteer';
      cancel = false;
      setState(() {
        _hasBeenPressed = !_hasBeenPressed;
      });
    });
  }

  cancelText() {
    setState(() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: Colors.white,
            title: Center(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Text(
                      'Are you sure\nyou want to Cancel?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Questrial',
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.of(context, rootNavigator: true)
                                  .pop('dialog');
                              volText();
                            },
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              minimumSize: Size(100, 45),
                              backgroundColor: ColorConstants.green,
                            ),
                            child: Text(
                              'Yes',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.of(context, rootNavigator: true)
                                  .pop('dialog');
                            },
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              minimumSize: Size(100, 45),
                              backgroundColor: Colors.white,
                            ),
                            child: Text(
                              'No',
                              style: TextStyle(color: ColorConstants.green),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      );
    });
  }

  bool _hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.offWhite,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/appBarPic.png'),
                    fit: BoxFit.fill)),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
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
                          child: Image.asset('assets/images/RedAlert.png',
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
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Text(
                              '3 Volunteer(s) in this Opportunity',
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
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                          setCancelText();
                        });
                        cancel = true;
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        minimumSize: Size(300, 45),
                        backgroundColor: _hasBeenPressed
                            ? ColorConstants.offWhite
                            : ColorConstants.redText,
                      ),
                      child: Text(
                        btnText,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 10),
                        child: Row(
                          children: [
                            Text(
                              'Hours to Volunteer: ',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Helvetica',
                                  color: ColorConstants.greyText),
                            ),
                            Text(
                              hours,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Helvetica',
                                  color: ColorConstants.greyText),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Text(
                              'Location: ',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Helvetica',
                                  color: ColorConstants.greyText),
                            ),
                            Text(
                              location,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Helvetica',
                                  color: ColorConstants.greyText),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Text(
                              'Date: ',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Helvetica',
                                  color: ColorConstants.greyText),
                            ),
                            Text(
                              date,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Helvetica',
                                  color: ColorConstants.greyText),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Text(
                              'Difficulty: ',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Helvetica',
                                  color: ColorConstants.greyText),
                            ),
                            Text(
                              difficulty,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Helvetica',
                                  color: ColorConstants.redText),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10, top: 25),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "What we'll be doing",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Helvetica',
                          color: ColorConstants.darkgreyText),
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
                      "Discussion",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Helvetica',
                          color: ColorConstants.darkgreyText),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      discussion,
                      style: TextStyle(
                          fontSize: 10,
                          letterSpacing: 1,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Helvetica',
                          color: ColorConstants.greyText),
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsDirectional.only(top: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: ColorConstants.grey1,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide.none),
                          hintText: "Write a message...",
                          hintStyle: TextStyle(
                            fontSize: 12,
                            color: ColorConstants.msgColor,
                            fontWeight: FontWeight.bold,
                          ),
                          prefixIcon: Icon(Icons.send),
                          prefixIconColor: ColorConstants.green),
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => chatConvoPage()),
                        // );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
