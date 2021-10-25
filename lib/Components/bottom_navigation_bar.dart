import 'package:albat/Screens/appointment.dart';
import 'package:albat/Screens/homepage.dart';
import 'package:albat/Screens/prescription_screen.dart';
import 'package:flutter/material.dart';

class CustomBottomNavi extends StatefulWidget {
  static String id ='/bottom_navigation_bar';
  @override
  _CustomBottomNaviState createState() => _CustomBottomNaviState();
}

class _CustomBottomNaviState extends State<CustomBottomNavi> {
  int currentScreen = 0;
  List<Widget> screens = [
    Homepage(),
    PrescriptionScreen(),
    Appointment(),
    PrescriptionScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(currentScreen),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentScreen,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (index){
          setState(() {
            currentScreen=index;
          });
        },
        items:const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.post_add_rounded,
            ),
            label: "Prescription",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_outlined,
            ),
            label: "Appointment",
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(
              Icons.person_pin_circle_outlined,
            ),
          ),
        ],
      ),
    );
  }
}
