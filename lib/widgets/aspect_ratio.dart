import 'package:flutter/material.dart';

class AspectRatioEx extends StatelessWidget {
  const AspectRatioEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: AspectRatio(
          aspectRatio: 16 / 9,// width / height
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}