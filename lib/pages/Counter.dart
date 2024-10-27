import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$count',
              style: TextStyle(fontSize: 22.0),
            ),
            Row(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(onPressed: increment, child: Icon(Icons.add)),
                OutlinedButton(
                    onPressed: decrement, child: Icon(Icons.minimize)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
