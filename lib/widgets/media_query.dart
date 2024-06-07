import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: mediaQuery.height*0.2, // 20 % from height
          width: mediaQuery.width * 0.75,
          color: Colors.amber,
        ),
        Container(
          height: mediaQuery.height*0.2, // 20 % from height
          width: mediaQuery.width * 0.5,
          color: Colors.black,
        ),
        Container(
          height: mediaQuery.height*0.2, // 20 % from height
          width: mediaQuery.width * 0.9,
          color: Colors.red,
        ),
      ],
    );
  }
}
