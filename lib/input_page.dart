import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

enum Gender{
  male,
  female,
  other
}


const bottomContainerHeight=80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour=Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);




class inputPage extends StatefulWidget {
  // const inputPage({Key? key}) : super(key: key);

  @override
  State<inputPage> createState() => _inputPageState();
}

class _inputPageState extends State<inputPage> {

  Color maleCardColour=inactiveCardColour;
  Color femaleCardColour=inactiveCardColour;
  String maleText='male';
  Gender selectedGender=Gender.other;


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
                  Expanded(child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedGender=Gender.male;
                      });
                    },
                    child: ReusableCard(colour: selectedGender==Gender.male?activeCardColour:inactiveCardColour,
                    cardChild: ReusableCardChild(text: 'Male',icon: FontAwesomeIcons.male),),
                  )),
                  Expanded(child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedGender=Gender.female;
                        });
                      },
                      child: ReusableCard(
                        colour: selectedGender == Gender.female?activeCardColour:inactiveCardColour,
                        cardChild: ReusableCardChild(
                            text: 'Female',
                            icon: FontAwesomeIcons.female),))),
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
                margin: EdgeInsets.only(top: 8.0),
                width: double.infinity,
                height: bottomContainerHeight,
              )
            ],
      ),
    );
  }
}
