import 'package:flutter/material.dart';
import 'package:projects_flutter/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text(
          "Tarefas",
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: Duration(milliseconds: 800),
        child: ListView(
          children: [
            Task(
              "Orar",
              "assets/images/imageOne.jpg",
              1,
            ),
            Task(
              "Aprender Flutter",
              "assets/images/Image2.jpg",
              3,
            ),
            Task(
              "Correr",
              "assets/images/image3.jpg",
              3,
            ),
            Task(
              'Ler',
              'assets/images/image4.jpg',
              3,
            ),
            Task(
              "Andar de bicicleta",
              "assets/images/image5.jpeg",
              2,
            ),
            Task(
              "Jogar Basquete",
              "assets/images/image6.webp",
              5,
            ),
            SizedBox(height: 60,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {

        setState(() {
          opacidade = !opacidade;
        });
      },
        child: Icon(Icons.remove_red_eye),
      ),

    );
  }
}