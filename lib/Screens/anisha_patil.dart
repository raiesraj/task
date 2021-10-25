import 'package:albat/Components/custom_app_bar.dart';
import 'package:albat/Components/filling_fast_button.dart';
import 'package:albat/Components/know_more_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnishaPatil extends StatefulWidget {
  static String id = 'anisa_patil';

  @override
  _AnishaPatilState createState() => _AnishaPatilState();
}

class _AnishaPatilState extends State<AnishaPatil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20,),
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 50,
            backgroundImage: AssetImage('assets/images/doctor.jpg'),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Dr.Anisha Patil',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            'MBBS,General Physician | Allopathy',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            '\$200',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          KnowMoreButtons(),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      '02\nToday',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      '03\nTomorrow',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.calendar_today_outlined,
                          size: 35,
                        ))),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                  top: 10,
                ),
                child: Text(
                  'MORNINGS SLOTS',
                  style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              FillingFastButton(
                secondtext: 'Filling fast',
                color: Colors.blue,
                onPressed: () {},
                text: '9AM',
                border: Border.all(color: Colors.blue),
              ),
              FillingFastButton(
                secondtext: 'Slots Full',
                color: Colors.red,
                border: Border.all(color: Colors.grey),
                onPressed: () {},
                text: '10AM',
              ),
              FillingFastButton(
                secondtext: '',
                color: Colors.transparent,
                border: Border.all(color: Colors.blue),
                onPressed: () {},
                text: '11AM',
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                  top: 10,
                ),
                child: Text(
                  'AFTERNOON SLOTS',
                  style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              FillingFastButton(
                secondtext: '',
                color: Colors.transparent,
                onPressed: () {},
                text: '1 PM',
                border: Border.all(color: Colors.blue),
              ),
              FillingFastButton(
                secondtext: '',
                color: Colors.transparent,
                border: Border.all(color: Colors.blue),
                onPressed: () {},
                text: '2 PM',
              ),
              FillingFastButton(
                secondtext: 'Filling fast',
                color: Colors.blue,
                border: Border.all(color: Colors.blue),
                onPressed: () {},
                text: '3 PM',
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                  top: 10,
                ),
                child: Text(
                  'EVENING SLOTS',
                  style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              FillingFastButton(
                secondtext: '',
                color: Colors.transparent,
                onPressed: () {},
                text: '6 PM',
                border: Border.all(color: Colors.blue),
              ),
              FillingFastButton(
                secondtext: '',
                color: Colors.transparent,
                border: Border.all(color: Colors.blue),
                onPressed: () {},
                text: '7 PM',
              ),
              FillingFastButton(
                secondtext: 'Slots Full',
                color: Colors.red,
                border: Border.all(color: Colors.grey),
                onPressed: () {},
                text: '8 PM',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
