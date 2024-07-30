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
        title: Text(
          'Tarefas',
        ),
      ),
      body: AnimatedOpacity(
        opacity: opacity ? 1 : 0,
        duration: Duration(microseconds: 700),
        child: ListView(
          children: [
            Task(
              "Jogar de Myers",
              "https://conteudo.imguol.com.br/c/entretenimento/e9/2018/10/18/michael-myers-cada-vez-mais-assustador-no-novo-halloween-1539891706130_v2_900x506.jpg",
              5,
            ),
            Task(
                "Jogar de Artista",
                "https://preview.redd.it/vqb3n4gcejn91.jpg?width=1200&format=pjpg&auto=webp&s=9a3af0be055a735557b3830d66d439c93e8e73fa",
                4),
            Task(
              "Jogar de Palhaço",
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
        child: Icon(Icons.remove_red_eye),
      ),
    );
  }
}
