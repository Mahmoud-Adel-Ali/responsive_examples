import 'package:flutter/material.dart';

class LayoutBuilderEx extends StatelessWidget {
  const LayoutBuilderEx({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 500) {// first break point
          return const Mobilelayout();
        } else {
          return const TabletLayout();
        }
      },
    );
  }
}

class Mobilelayout extends StatelessWidget {
  const Mobilelayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Display(index: index + 1)),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 5),
              color: Colors.amber[100],
              child: ListTile(
                title: Text((index + 1).toString()),
                titleTextStyle:
                    const TextStyle(fontSize: 26, color: Colors.brown),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Display extends StatelessWidget {
  const Display({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          index.toString(),
          style: const TextStyle(fontSize: 50, color: Colors.brown),
        ),
      ),
    );
  }
}

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key});

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    this.index = index + 1;
                    setState(() {});
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    color: Colors.amber[100],
                    child: ListTile(
                      title: Text((index + 1).toString()),
                      titleTextStyle:
                          const TextStyle(fontSize: 26, color: Colors.brown),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Display(index: index),
          ),
        ],
      ),
    );
  }
}
