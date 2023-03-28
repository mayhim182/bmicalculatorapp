import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


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
                  Expanded(child: ReusableCard(colour: activeCardColour)),
                  Expanded(child: ReusableCard(colour: activeCardColour)),
                ],
              )),
              Expanded(child:ReusableCard(colour:activeCardColour)),
              Expanded(child:Row(
              children: <Widget>[
              Expanded(child: ReusableCard(colour: activeCardColour)),
              Expanded(child: ReusableCard(colour: activeCardColour)),
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

class ReusableCard extends StatelessWidget {
  // const ReusableCard({
  //   super.key,
  // });
  // Will define our custom constructor

  const ReusableCard({required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

