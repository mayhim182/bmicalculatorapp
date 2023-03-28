


import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        backgroundColor: Color(0XFF141A3B),
      ),
      body: Column(
            children: <Widget>[
              Expanded(child: Row(
                children: <Widget>[
                  Expanded(child: ReusableCard(colour: Color(0xFF1D1E33))),
                  Expanded(child: ReusableCard(colour: Color(0xFF1D1E33))),
                ],
              )),
              Expanded(child:ReusableCard(colour: Color(0xFF1D1E33))),
              Expanded(child:Row(
              children: <Widget>[
              Expanded(child: ReusableCard(colour: Color(0xFF1D1E33))),
              Expanded(child: ReusableCard(colour: Color(0xFF1D1E33))),
            ],
      )
              ),
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

