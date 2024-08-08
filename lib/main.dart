import 'package:flutter/material.dart';
import 'package:statelessandstateful/screens/form_screen.dart';
import 'package:statelessandstateful/screens/initial_screen.dart';

void main() {
   runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/initialScreen',
      routes: {
        '/initialScreen': (context) => const Initialscreen(),
        '/formScreen': (context) => const FormScreen(),
      },
      title: 'Tasks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(color: Colors.blue),
      ),
      home: const Initialscreen(),
    );
  }
}