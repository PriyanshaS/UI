import 'package:flutter/material.dart';

class Contain extends StatelessWidget {
  String title ; 
  Icon icon ; 
   Contain({super.key , required this.title , required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        SizedBox(width: 10,),
        Text(title ,style: TextStyle(color: Colors.blue),),
      ],
    ), 
                decoration: BoxDecoration(border: Border.all(width: 1 , color: Colors.blue , style: BorderStyle.solid) ,
                borderRadius: BorderRadius.all(Radius.circular(5))),);
  }
}