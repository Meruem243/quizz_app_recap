import 'package:flutter/material.dart';
import 'answer_button.dart';
import 'data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.questionText,
              style: TextStyle(color: Colors.white, fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),

            ...currentQuestion.answers.map((answer) {
              return AnswerButton(
                answerText: answer,
                onPressed: () {
                  // Handle answer selection
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
