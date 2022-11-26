import 'package:bmi/Card_Info.dart';
import 'package:bmi/Reusable_Card.dart';
import 'package:flutter/material.dart';
import 'Reusable_Card.dart';
import 'Input_Page.dart';
import 'Calculator_Brain.dart';
import 'Card_Info.dart';

class ResultsPage extends StatelessWidget {
double b;
String msg;
ResultsPage(@required this.b,@required this.msg){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('BMI CALCULATOR'),
         backgroundColor: Colors.black45
      ),

      body:
      Column(
        children: [
          Expanded(flex:5,child: Container(
            margin: EdgeInsets.only(top: 20),
            width: double.infinity,

            child: Center(
              child: Text('YOUR RESULT!',style: TextStyle(
              fontSize: 30,
          ),
          ),
            ),
            color: Color(0XFF1D1E33),
          ),
          ),
          SizedBox(height: 15),
             Expanded(

               flex: 23,
               child: ReusableCard(cardchild: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('$msg' , style: TextStyle(
                    fontSize: 30,
                  ),),
                  SizedBox(height: 10,),
                  Text('$b',style: TextStyle(
                    fontSize: 60,
                    color: Colors.green,
                  ),),
                  SizedBox(height: 10,),
                  Text('BE HEALTHY!!',style: TextStyle(
                    fontSize: 30,
                  ),),
                ],
            ),
                colour: Color(0XFF1D1E33),
            ),
             ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>InputPage()));
            },
            child: Container(
              child: Center(
                child: Text('RE-CALCULATE!' , style: TextStyle(
                  fontSize: 30,
                ),
                ),
              ),
              color: Color((0xFFEB1555)),
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 80,
            ),
          ),
        ],
      ),
    );
  }
}
