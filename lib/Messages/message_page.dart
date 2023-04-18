import 'package:flutter/material.dart';
import 'package:hackfest2023/constants.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.offWhite,
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: _buildCircularButton(Colors.black, "Red Alert"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: _buildCircularButton(Colors.black, "Mike"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: _buildCircularButton(Colors.black, "Maria"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: _buildCircularButton(Colors.black, "Joe"),
                    ),
                  ],
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildChatBox(
                        "Red Alert Volun...",
                        "Hello, how are you?",
                        "12:00 PM",
                        Colors.blue,
                        Icons.arrow_forward_ios,
                      ),
                      SizedBox(height: 20.0),
                      _buildChatBox(
                        "Joe (Volunteer)",
                        "I'm doing great, thanks for asking.",
                        "12:15 PM",
                        Colors.green,
                        Icons.arrow_forward_ios,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

Widget _buildCircularButton(Color color, String label) {
  return Column(
    children: [
      Container(
        width: 60.0,
        height: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        child: InkWell(
          onTap: () {
            // Do something when the button is tapped
          },
        ),
      ),
      SizedBox(height: 8.0),
      Text(
        label,
        style: TextStyle(fontSize: 16.0),
      ),
    ],
  );
}

Widget _buildChatBox(
    String name, String message, String time, Color color, IconData icon) {
  return Padding(
    padding: EdgeInsets.all(20.0),
    child: InkWell(
      onTap: () {
        // Do something when the chat box is tapped
      },
      child: Container(
        height: 100.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          children: [
            Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 10.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    message,
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(height: 5.0),
                Icon(
                  icon,
                  color: Colors.grey,
                  size: 16.0,
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
