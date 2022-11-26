import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  const ReusableCard({required this.cardchild,required this.colour});
  final Widget cardchild;
  final Color colour;
  @override
  Widget build(BuildContext context){
    return Container(
      child: cardchild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}