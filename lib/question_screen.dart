import 'package:flutter/material.dart';
import 'answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Question Screen', style: TextStyle(color: Colors.white)),
          SizedBox(height: 30),
          AnswerButton(
            answerText: 'Answer 1',
            onPressed: () {
              // Handle answer selection
            },
          ),
        ],
      ),
    );
  }
}
