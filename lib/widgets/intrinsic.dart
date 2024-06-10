import 'package:flutter/material.dart';

class IntrinsicEx extends StatelessWidget {
  const IntrinsicEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
                child: const SizedBox(
                  height: 200,
                ),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
