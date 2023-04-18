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
      // Replace with your logic
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
                              volText();
                              setState(() {
                                _hasBeenPressed = !_hasBeenPressed;
                              });
                              cancel = false;
                              Navigator.of(context, rootNavigator: true)
                                  .pop('dialog');
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: Image.asset('assets/images/settings.png',
                            fit: BoxFit.contain),
                      ),
                    ),
                    Column(
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
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          child: Text(
                            '3 Volunteer(s) in this Opportunity',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Questrial',
                                color: Colors.black),
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
