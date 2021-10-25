import 'package:flutter/material.dart';
class DateCard extends StatelessWidget {
  final String text;
  const DateCard({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 290,left: 20,top: 10),
      height: 30,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffc7e3e0),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 6),
        child: Text(
          text,
          style: TextStyle(
            color: Color(0xff61b4b0),
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
