import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Reusable_Card.dart';
import 'Card_Info.dart';
import 'Results_Page.dart';
import 'Calculator_Brain.dart';
const bottomcontainerheight = 80.0;
const containercolour = Color(0XFF1D1E33);
double hieght = 180;
double wieght = 2;
int age = 1;
enum gender {
male,female
}
class InputPage extends StatefulWidget {
  @override
  _calcState createState() => _calcState();
}

class _calcState extends State<InputPage> {
  Color cardcm = containercolour;
  Color cardcf = containercolour ;
  void changecardclr(gender choice){
    if(choice==gender.male){
      cardcf = containercolour;
      cardcm = Colors.redAccent;
    }
    else if(choice==gender.female){
      cardcm = containercolour;
      cardcf = Colors.redAccent;
    }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        leading: Icon(
          Icons.list,
        ),
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                  onTap: (){
                    setState(() {
                      changecardclr(gender.male);
                    });
                  },
                  child: ReusableCard(
                    colour:cardcm,
                    cardchild: CardInfo(
                      cardicon: FontAwesomeIcons.mars,
                      cardtext: 'MALE',
                    ),
                  ),
                ),
                ),
                Expanded(child: GestureDetector(
                  onTap: (){setState(() {
                    changecardclr(gender.female);
                  });
                  },
                  child: ReusableCard(
                    colour: cardcf,
                    cardchild: CardInfo(
                      cardicon: FontAwesomeIcons.venus,
                      cardtext: 'FEMALE',
                    ),
                  ),
                ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: containercolour,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HIEGHT',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 18,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '$hieght',
                              style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 18,
                              ),
                            ),
                            Text(
                              'cm',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        Slider(value: hieght, min: 120,max: 220,onChanged: (double newValue){setState(() {
                          hieght = newValue;
                        });
                        },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child :Row(
              children: [
                Expanded(child: ReusableCard(
                  colour: containercolour,
                  cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                    children:[
                      Center(
                        child: Text(
                          'WIEGHT',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Text(
                            '$wieght',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Kg',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                              onPressed: () {
                                setState((){
                                  wieght--;
                                });
                              },
                              child : Icon(
                                Icons.arrow_right_alt_sharp,
                              ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              setState((){
                                wieght++;
                              });
                            },
                            child : Icon(
                              Icons.add,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ),
                Expanded(child: ReusableCard(
                  colour: containercolour,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children:[
                        Center(
                          child: Text(
                            'AGE',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Text(
                              '$age',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                                onPressed: () {
                                  setState((){
                                    age--;
                                  });
                                },
                                child : Icon(
                                  Icons.arrow_right_alt_sharp,
                                ),

                            ),
                            SizedBox(
                              width: 5,
                            ),
                            FloatingActionButton(
                                onPressed: () {
                                  setState((){
                                    age++;
                                  });
                                },
                                child : Icon(
                                  Icons.add,
                                ),
                            ),
                          ],
                        ),
                      ],
                    ),
                ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              CalculatorBrain cb = CalculatorBrain(wieght,hieght);
              double a = cb.clac();
              String s = cb.res();
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultsPage(a,s)));
            },
              child: Container(
                child: Center(
                  child: Text('CALCULATE!' , style: TextStyle(
                      fontSize: 30,
                  ),
                  ),
                ),
                color: Color((0xFFEB1555)),
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                height: bottomcontainerheight,
              ),
            ),
        ],
      ),
    );
  }
}




