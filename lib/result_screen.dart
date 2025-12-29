import 'package:flutter/material.dart';
import 'data/questions.dart';
import 'question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers, required this.onRestart});

  final List<String> chosenAnswers;
  final VoidCallback onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].questionText,
        'correct_answer': questions[i].answers[0],
        'chosen_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final sumarryData = getSummaryData();

    final numberOfQuestions = questions.length;
    final numberOfCorrectAnswers = sumarryData.where((data) {
      return data['chosen_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'You did it!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Text(
              'You answered $numberOfCorrectAnswers out of $numberOfQuestions questions correctly!',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(height: 30),
            QuestionSummary(summaryData: sumarryData),
            SizedBox(height: 40),
            TextButton(
              onPressed: onRestart,
              child: Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
