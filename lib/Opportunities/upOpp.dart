import 'package:flutter/material.dart';

class upOpp extends StatefulWidget {
  const upOpp({super.key});

  @override
  State<upOpp> createState() => _upOppState();
}

class _upOppState extends State<upOpp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Text(
            'Upcoming Opportunities',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
