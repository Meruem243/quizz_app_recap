import 'package:flutter/material.dart';
import 'home_page.dart';
import 'question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = "start-screen";

  void switchScreen() {
    setState(() {
      activeScreen = "question-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 25, 5, 80),
                Color.fromARGB(255, 65, 15, 140),
              ],
            ),
          ),
          child: activeScreen == "start-screen"
              ? HomePage(switchScreen)
              : QuestionScreen(),
        ),
      ),
    );
  }
}
