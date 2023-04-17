import 'package:flutter/material.dart';

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
        body: Scaffold(
          bottomNavigationBar: NavigationBar(
            destinations: const [
              NavigationDestination(icon: Icon(Icons.star), label: 'Volunteer'),
              NavigationDestination(icon: Icon(Icons.face), label: 'Profile'),
              NavigationDestination(icon: Icon(Icons.chat), label: 'Chat'),
            ],
            onDestinationSelected: (int index) {
              setState(() {
                currentPage = index;
              });
            },
            selectedIndex: currentPage,
          ),
        ));
  }
}
