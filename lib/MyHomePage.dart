import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  final List<Map<String, dynamic>> items = const [
    {'text': 'a', 'color': Colors.green},
    {'text': 'b', 'color': Colors.blue},
    {'text': 'c', 'color': Colors.red},
    {'text': 'd', 'color': Colors.orange},
    {'text': 'e', 'color': Colors.purple},
    {'text': 'f', 'color': Colors.yellow},
    {'text': 'g', 'color': Colors.teal},
    {'text': 'h', 'color': Colors.cyan},
    {'text': 'i', 'color': Colors.indigo},
    {'text': 'j', 'color': Colors.amber},
    {'text': 'k', 'color': Colors.lime},
    {'text': 'l', 'color': Colors.deepOrange},
    {'text': 'm', 'color': Colors.pink},
    {'text': 'n', 'color': Colors.brown},
    {'text': 'o', 'color': Colors.grey},
    {'text': 'p', 'color': Colors.blueAccent},
    {'text': 'q', 'color': Colors.lightGreen},
    {'text': 'r', 'color': Colors.deepPurple},
    {'text': 's', 'color': Colors.green},
    {'text': 't', 'color': Colors.blueGrey},
    {'text': 'u', 'color': Colors.tealAccent},
    {'text': 'v', 'color': Colors.orangeAccent},
    {'text': 'w', 'color': Colors.pinkAccent},
    {'text': 'x', 'color': Colors.lightBlue},
    {'text': 'y', 'color': Colors.limeAccent},
    {'text': 'z', 'color': Colors.yellowAccent},
    {'text': '0', 'color': Colors.redAccent},
    {'text': '1', 'color': Colors.cyanAccent},
    {'text': '2', 'color': Colors.blue},
    {'text': '3', 'color': Colors.deepOrangeAccent},
    {'text': '4', 'color': Colors.orange},
    {'text': '5', 'color': Colors.green},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Container(
              decoration: BoxDecoration(
                color: item['color'],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  item['text'],
                  style: const TextStyle(
                    fontSize: 24.0,
                    color: Colors.black,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
