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
                OutlinedButton(
                  onPressed: increment,
                  child: Icon(Icons.add, size: 24.0,
       ),
                  style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.all(12.0), shape: CircleBorder()),
                ),
                SizedBox(
                  width: 16.0,
                ),
                OutlinedButton(
  onPressed: decrement,
  style: OutlinedButton.styleFrom(
    shape: CircleBorder(),
    minimumSize: Size(48, 48), // Ensure the button has a consistent size

    padding: EdgeInsets.zero, // Remove padding for exact alignment
  ),
  child: Center( // Ensures the icon stays centered
    child: Icon(
      Icons.remove, // Use Icons.remove for consistency with decrement
      size: 24.0,
      
    ),
  ),
)
,
              ],
            )
          ],
        ),
      ),
    );
  }
}
