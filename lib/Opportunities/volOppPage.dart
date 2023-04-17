import 'package:flutter/material.dart';

class volOppPage extends StatefulWidget {
  const volOppPage({super.key});

  @override
  State<volOppPage> createState() => _volOppPageState();
}

class _volOppPageState extends State<volOppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text('Volunteering Opportunities',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      )), //volunteering opportunities
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                  ),
                ), //search bar--------------------------
              ],
            ),
          ),
        ));
  }
}
