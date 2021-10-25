
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  final String text;
  const SearchButton({
    Key? key, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70),
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 40),
        width: double.maxFinite,
        child: TextFormField(
          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: text,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: IconButton(onPressed: (){},icon: Icon(Icons.search,size: 30,),),
              )
          ),
        ),
      ),
    );
  }
}
