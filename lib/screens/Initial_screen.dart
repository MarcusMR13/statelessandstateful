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
              "https://conteudo.imguol.com.br/c/entretenimento/e9/2018/10/18/michael-myers-cada-vez-mais-assustador-no-novo-halloween-1539891706130_v2_900x506.jpg",
              5,
            ),
             Task(
                "Play with Artist",
                "https://preview.redd.it/vqb3n4gcejn91.jpg?width=1200&format=pjpg&auto=webp&s=9a3af0be055a735557b3830d66d439c93e8e73fa",
                4),
             Task(
              "Play with Clown",
              "https://img3.pillowfort.social/posts/66e93f1d1f40a7a3bd98_small.jpeg",
              5,
            ),
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
