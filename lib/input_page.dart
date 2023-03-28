import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


const bottomContainerHeight=80.0;
const activeCardColour = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);

class inputPage extends StatefulWidget {
  // const inputPage({Key? key}) : super(key: key);

  @override
  State<inputPage> createState() => _inputPageState();
}

class _inputPageState extends State<inputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: activeCardColour,
      ),
      body: Column(
            children: <Widget>[
              Expanded(child: Row(
                children: <Widget>[
                  Expanded(child: ReusableCard(colour: activeCardColour,
                  cardChild: ReusableCardChild(text: 'Male',icon: FontAwesomeIcons.male),)),
                  Expanded(child: ReusableCard(colour: activeCardColour,cardChild: ReusableCardChild(text: 'Female',icon: FontAwesomeIcons.female),)),
                ],
              )),
              Expanded(child:ReusableCard(colour:activeCardColour,cardChild: ReusableCardChild(text: 'Female',icon: FontAwesomeIcons.female),)),
              Expanded(child:Row(
              children: <Widget>[
              Expanded(child: ReusableCard(colour: activeCardColour,cardChild: ReusableCardChild(text: 'Female',icon: FontAwesomeIcons.female),)),
              Expanded(child: ReusableCard(colour: activeCardColour,cardChild: ReusableCardChild(text: 'Female',icon: FontAwesomeIcons.female),)),
            ],
      )
              ),
              Container(
                color: bottomContainerColour,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: bottomContainerHeight,
              )
            ],
      ),
    );
  }
}

class ReusableCardChild extends StatelessWidget {
  const ReusableCardChild({
    required this.text,required this.icon
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon,
        size: 80.0),
        SizedBox(height: 15.0,),
        Text(text,style: TextStyle(fontSize: 18.0,color: Color(0xFF8D8E98)),)
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  // const ReusableCard({
  //   super.key,
  // });
  // Will define our custom constructor



  const ReusableCard({required this.colour,required this.cardChild});

  final Color colour;
  final Widget cardChild;



  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

