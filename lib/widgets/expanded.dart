import 'package:flutter/material.dart';

class ExpandedEx extends StatelessWidget {
  const ExpandedEx({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
            ),
          ),
          Container(
            height: height*0.2,
            color: Colors.green,
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.purple,
            ),
          ),
          Container(
            height: height*0.4,
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}