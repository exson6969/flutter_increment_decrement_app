import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to counter app", style: TextStyle(fontSize: 22.0),),
            SizedBox(height:  10.0),
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/counter'),
                child: Text("Counter"))
          ],
        ),
      ),
    );
  }
}
