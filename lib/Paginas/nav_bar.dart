import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  final Function currentIndex;
  const NavBar({Key? key, required this.currentIndex}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBar();
}

class _NavBar extends State<NavBar> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;
            widget.currentIndex(i);
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromARGB(255, 45, 45, 45),
        selectedFontSize: 15.00,
        unselectedFontSize: 10.00,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined),
              label: "MEX",
              activeIcon: Icon(Icons.location_on)),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined),
              label: "USA",
              activeIcon: Icon(Icons.location_on)),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined),
              label: "GER",
              activeIcon: Icon(Icons.location_on)),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined),
              label: "CAN",
              activeIcon: Icon(Icons.location_on)),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined),
              label: "FRA",
              activeIcon: Icon(Icons.location_on)),
        ]);
  }
}
