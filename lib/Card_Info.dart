import 'package:flutter/material.dart';
class CardInfo extends StatelessWidget {
  const CardInfo({required this.cardicon,required this.cardtext}) ;
  final IconData cardicon;
  final String cardtext;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardicon,
          size: 50,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          cardtext,
          style: TextStyle(
            fontSize: 18,
            color:Colors.blueGrey,
          ),
        )
      ],
    );
  }
}


