import 'package:flutter/material.dart';
import 'package:hackfest2023/constants.dart';

class volOppPage extends StatefulWidget {
  const volOppPage({super.key});

  @override
  State<volOppPage> createState() => _volOppPageState();
}

class _volOppPageState extends State<volOppPage> {
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
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 5000,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white),
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
                            child: Material(
                              child: Row(),
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
