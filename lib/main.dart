import 'package:flutter/material.dart';
import 'package:statelessandstateful/screens/initial_screen.dart';

void main() {
   runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(color: Colors.blue),
      ),
      home: const Initialscreen(),
    );
  }
}