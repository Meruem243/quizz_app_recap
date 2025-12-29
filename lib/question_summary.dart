import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: summaryData.length,
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemBuilder: (context, idx) {
        final data = summaryData[idx];
        final int index = data['question_index'] as int;
        final String question = data['question'] as String;
        final String correct = data['correct_answer'] as String;
        final String chosen = data['chosen_answer'] as String;
        final bool isCorrect = chosen == correct;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: isCorrect ? Colors.green : Colors.red,
                child: Text(
                  (index + 1).toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      question,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      chosen,
                      style: TextStyle(
                        color: isCorrect
                            ? Colors.greenAccent.shade100
                            : Colors.redAccent.shade100,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    if (!isCorrect) ...[
                      const SizedBox(height: 6),
                      Text(
                        'Correct: $correct',
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
