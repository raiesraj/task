import 'package:flutter/material.dart';
class KnowMoreButtons extends StatelessWidget {
  const KnowMoreButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(25),
            ),
            height: 40,
            width: MediaQuery.of(context).size.width,
            child: TextButton(
              onPressed: () {},
              child: Text('Know More',style: TextStyle(color: Colors.white),),
            ),
          ),
        ),
        SizedBox(width: 10,),
        Expanded(child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.blueGrey,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          height: 40,
          width: MediaQuery.of(context).size.width,
          child: TextButton(
            onPressed: () {},
            child: Text('Share info',style: TextStyle(color: Colors.blue),),
          ),
        ),
        ),
        SizedBox(width: 10,),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            height: 40,
            width: MediaQuery.of(context).size.width,
            child:
            TextButton(
              onPressed: () {},
              child: Text('Call Now',style: TextStyle(color: Colors.lightBlue),),
            ),
          ),
        ),
      ],
    );
  }
}
