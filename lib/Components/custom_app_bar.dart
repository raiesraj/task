import 'package:albat/Components/search_button.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color(0xff2e6485),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIconButton(
                        onPressed: (){},
                        icon: Icon(Icons.arrow_back,color: Colors.white,size: 30,),
                      ),
                      CustomIconButton(
                        onPressed: (){},
                          icon: Icon(Icons.arrow_downward_rounded,color: Colors.white,size: 30,)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  final Icon icon;
  final dynamic onPressed;
  const CustomIconButton({
    Key? key, required this.icon, this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){},
      icon: icon,
    );
  }
}
