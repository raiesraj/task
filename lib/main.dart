import 'package:flutter/material.dart';

import 'Components/bottom_navigation_bar.dart';
import 'Screens/anisha_patil.dart';
import 'Screens/appointment.dart';
import 'Screens/homepage.dart';
import 'Screens/prescription_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomBottomNavi(),
      debugShowCheckedModeBanner: false,
      routes: {
        Homepage.id: (context) => Homepage(),
        AnishaPatil.id: (context) => AnishaPatil(),
        PrescriptionScreen.id: (context) => PrescriptionScreen(),
         CustomBottomNavi.id: (context) => CustomBottomNavi(),
        Appointment.id:(context) => Appointment(),

      },
    );
  }
}
