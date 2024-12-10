import 'package:flutter/material.dart';
import 'package:nti_task/models/models.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List<LetterModel> items = [
    LetterModel(color: Colors.green, title: 'a'),
    LetterModel(color: Colors.blue, title: 'b'),
    LetterModel(color: Colors.red, title: 'c'),
    LetterModel(color: Colors.orange, title: 'd'),
    LetterModel(color: Colors.purple, title: 'e'),
    LetterModel(color: Colors.yellow, title: 'f'),
    LetterModel(color: Colors.teal, title: 'g'),
    LetterModel(color: Colors.cyan, title: 'h'),
    LetterModel(color: Colors.indigo, title: 'i'),
    LetterModel(color: Colors.amber, title: 'j'),
    LetterModel(color: Colors.lime, title: 'k'),
    LetterModel(color: Colors.deepOrange, title: 'l'),
    LetterModel(color: Colors.pink, title: 'm'),
    LetterModel(color: Colors.brown, title: 'n'),
    LetterModel(color: Colors.grey, title: 'o'),
    LetterModel(color: Colors.blueAccent, title: 'p'),
    LetterModel(color: Colors.lightGreen, title: 'q'),
    LetterModel(color: Colors.deepPurple, title: 'r'),
    LetterModel(color: Colors.green, title: 's'),
    LetterModel(color: Colors.blueGrey, title: 't'),
    LetterModel(color: Colors.tealAccent, title: 'u'),
    LetterModel(color: Colors.orangeAccent, title: 'v'),
    LetterModel(color: Colors.pinkAccent, title: 'w'),
    LetterModel(color: Colors.lightBlue, title: 'x'),
    LetterModel(color: Colors.limeAccent, title: 'y'),
    LetterModel(color: Colors.yellowAccent, title: 'z'),
    LetterModel(color: Colors.redAccent, title: '0'),
    LetterModel(color: Colors.cyanAccent, title: '1'),
    LetterModel(color: Colors.blue, title: '2'),
    LetterModel(color: Colors.deepOrangeAccent, title: '3'),
    LetterModel(color: Colors.orange, title: '4'),
    LetterModel(color: Colors.green, title: '5'),
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
            return Container(
              decoration: BoxDecoration(
                color: items[index].color,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  items[index].title,
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
