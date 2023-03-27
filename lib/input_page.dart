


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
      body: Center(
        child: Text('Body Text'),
      ),
    );
  }
}

