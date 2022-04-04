import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    final Color iconColor = Colors.blue.shade400;
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          label: 'Lifts',
          icon: Icon(
            FontAwesomeIcons.dumbbell,
            size: 20,
            color: iconColor,
          ),
        ),
        BottomNavigationBarItem(
            label: 'Tools',
            icon: Icon(FontAwesomeIcons.toolbox, size: 20, color: iconColor)),
        BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              FontAwesomeIcons.userCircle,
              size: 20,
              color: iconColor,
            ))
      ],
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/lifts');
            break;
          case 1:
            Navigator.pushNamed(context, '/tools');
            break;
          case 2:
            Navigator.pushNamed(context, '/profile');
            break;
        }
      },
    );
  }
}
