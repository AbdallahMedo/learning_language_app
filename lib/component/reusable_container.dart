import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  final String text;
  final Color color;
  final TextStyle style;
  final VoidCallback onTap;

 const ReusableContainer(
  {
    required this.text,
    required this.color,
    required this.style,
    required this.onTap,

});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: color,),
        padding:const EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        height: 50,
        width: double.infinity,

        child:  Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
