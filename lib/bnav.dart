import 'package:flutter/material.dart';
import 'package:hackfest2023/Opportunities/volOppPage.dart';
import 'package:hackfest2023/constants.dart';
import 'package:hackfest2023/profilePage/profile.dart';
import 'package:hackfest2023/Messages/message.dart';

class Nav extends StatefulWidget {
  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    volOppPage(),
    profile(),
    HomeChat(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(canvasColor: ColorConstants.bgColor),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage('assets/images/volunteer_inactive.png')),
                label: 'Volunteer',
              ),
              BottomNavigationBarItem(
                icon:
                    ImageIcon(AssetImage('assets/images/profile_inactive.png')),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/chat_inactive.png')),
                label: 'Chat',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTap,
            selectedItemColor: Colors.white,
          ),
        ));
  }
}
