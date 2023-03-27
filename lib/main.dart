import 'package:flutter/material.dart';

import 'input_page.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  // const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme= ThemeData();
    return MaterialApp(
        theme: ThemeData.dark().copyWith(

            primaryColor: Color(0xFF141A3B),
            // colorScheme: theme.colorScheme.copyWith(secondary: Colors.purple),
            scaffoldBackgroundColor: Color(0XFF141A3B),
            // textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),

        ),
        home: inputPage(),
    );
  }
}
