import 'package:flutter/material.dart';
import './homeScreen/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advanced UI',
      theme: ThemeData(
        primaryColor: Colors.blue,
        hintColor: Colors.pink,
        primarySwatch: Colors.yellow,
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 16, color: Colors.red),
          bodySmall: TextStyle(fontSize: 12, color: Colors.green),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
