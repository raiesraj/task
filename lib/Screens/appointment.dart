import 'package:albat/Components/custom_app_bar.dart';
import 'package:albat/Components/date_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Appointment extends StatefulWidget {
  static String id = 'appiontment';

  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'MEDICAL RECORDS',
                style: TextStyle(fontSize: 18),
              ),
            ),
            DateCard(
              text: '2 Dec,2020',
            ),
            SizedBox(
              height: 10,
            ),
            DrAkashCard(
              imagepath: AssetImage('assets/images/doctor.jpg'),
              titletext: 'Dr.Anisha Patil',
                secondtext: 'MBBS General Physician | Allopathy',
              thirdtext: '1 PM - 2 PM',
                fourtext: 'Token  - 07',
              lasttext: 'Cancelled Appointment',
              color: Color(0xfffe6a0a0),
            ),
            DateCard(text: '29 Nov, 2019',),
            SizedBox(height: 8,),
            DrAkashCard(
              imagepath: AssetImage('assets/images/doctor.jpg'),
              titletext: 'Dr.Akash Mehta',
              secondtext: 'BAMS General Physician | Ayurvedic',
              thirdtext: '11 AM - 12 PM',
              fourtext: 'Token  - 10',
              lasttext: 'View Prescription',
              color: Color(0xfff83a2b6),
            ),
            DateCard(text: '15 Nov, 2019'),
            SizedBox(height: 8,),
            DrAkashCard(
              imagepath: AssetImage('assets/images/doctor.jpg'),
              titletext: 'Dr.Akash Mehta',
              secondtext: 'BAMS General Physician | Ayurvedic',
              thirdtext: '11 AM - 12 PM',
              fourtext: 'Token  - 10',
              lasttext: 'View Prescription',
              color: Color(0xfff83a2b6),
            ),

          ],
        ),
      ),
    );
  }
}
//dr Akash card
class DrAkashCard extends StatelessWidget {
 final String titletext;
 final String secondtext;
 final String thirdtext;
 final String fourtext;
 final String lasttext;
 final ImageProvider imagepath;
 final Color color;
  const DrAkashCard({Key? key, required this.titletext, required this.secondtext, required this.thirdtext, required this.fourtext, required this.lasttext, required this.imagepath, required this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 190,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: TextButton(
        onPressed: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          imagepath,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titletext,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      secondtext,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Text(thirdtext,style: TextStyle(color: Colors.black),),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 90,top: 10),
              child: Text(fourtext,style: TextStyle(color: Colors.black,fontSize: 14),),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(lasttext,style: TextStyle(color: color,),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
