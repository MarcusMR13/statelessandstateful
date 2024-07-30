import 'package:flutter/material.dart';
import 'package:statelessandstateful/components/task.dart';

class Initialscreen extends StatefulWidget {
  const Initialscreen({super.key});

  @override
  State<Initialscreen> createState() => _InitialscreenState();
}

class _InitialscreenState extends State<Initialscreen> {
  bool opacity = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text(
          'Tasks',
        ),
      ),
      body: AnimatedOpacity(
        opacity: opacity ? 1 : 0,
        duration: const Duration(microseconds: 700),
        child: ListView(
          children: const [
             Task(
              "Play with Myers",
              "assets/images/myers.jpg",
              5,
            ),
             Task(
                "Play with Artist",
                "assets/images/artist.jpg",
                4),
             Task(
              "Play with Clown",
              "assets/images/clown.jpg",
              5,
            ),
            SizedBox(height: 100,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          setState(() {
            opacity = !opacity;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
