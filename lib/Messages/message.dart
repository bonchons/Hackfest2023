import 'package:flutter/material.dart';

import 'message_page.dart';



void main() {
  runApp(const HomeChat());
}


class HomeChat extends StatelessWidget {
  const HomeChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const HomeChatPage(),
    );
  }
}

class HomeChatPage extends StatefulWidget {
  const HomeChatPage({super.key});

  @override
  State<HomeChatPage> createState() => _HomeChatPageState();
}

class _HomeChatPageState extends State<HomeChatPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const ChatPage(),
      bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(icon:Icon(Icons.star), label: 'Volunteer'),
            NavigationDestination(icon:Icon(Icons.face), label: 'Profile'),
            NavigationDestination(icon:Icon(Icons.chat), label: 'Chat'),
               ],
               onDestinationSelected: (int index){
                setState((){
                  currentPage = index;
                }

                );
               },
               selectedIndex: currentPage,
        ),
    );
  }
}


