import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class FillingFastButton extends StatelessWidget {
  final String text;
  final dynamic onPressed;
  final BoxBorder border;
  final String secondtext;
  final Color color;
  const FillingFastButton({
    Key? key, required this.text, this.onPressed, required this.border, required this.secondtext, required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          border: border,
        ),
        child: TextButton(
          onPressed: onPressed, child: Column(
            children: [
              Text(text,textAlign: TextAlign.center,),
              Text(secondtext,style: TextStyle(color: color,),textAlign: TextAlign.center,),
            ],
          ),
        ),
      ),
    );
  }
}
