import 'package:flutter/material.dart';
import 'package:increment_decrement/pages/Counter.dart';
import 'package:increment_decrement/pages/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context)=>Home(),
        '/counter':(context)=> Counter()
      },
         );
  }
}
