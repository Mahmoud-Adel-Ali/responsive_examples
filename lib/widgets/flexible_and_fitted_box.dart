import 'package:flutter/material.dart';

class FlexibleAndFittedBoxEx extends StatelessWidget {
  const FlexibleAndFittedBoxEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
      itemBuilder: (context, index) {
        return FittedBox(
            child: Image.network(
                'https://avatars.githubusercontent.com/u/141450980?v=4'));
      },
    ));
  }
}
