import 'package:flutter/material.dart';

class FlexibleAndFittedBoxEx extends StatelessWidget {
  const FlexibleAndFittedBoxEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Flexible(
              child: Icon(
            Icons.ac_unit,
            size: 200,
          )),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              color: Colors.blue,
            ),
          ),
          Container(
            height: 100,
            color: Colors.green,
          ),
          Container(
            height: 100,
            color: Colors.yellow,
          ),
          
        ],
      ),
    );
  }
}
