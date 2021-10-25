import 'package:albat/Components/custom_app_bar.dart';
import 'package:albat/Components/search_button.dart';
import 'package:albat/Components/white_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {

  static String id = 'homepage';
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              CustomAppBar(),
              SearchButton(
                text: 'Search Doctor',
              ),
            ],
          ),
          WhiteCard(),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text('CATEGORIES',style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),),
          ),
        ],
      ),
    );
  }
}



