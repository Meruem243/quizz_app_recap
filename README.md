# quizz_app_recap

A Flutter quiz app built while learning Flutter fundamentals.

## What I learned building this app

- App entry & wiring: how a Flutter app starts from `lib/main.dart` and how `MaterialApp` and `Scaffold` are used.
- State management by widget switching: managing screens and state in `_QuizState` (`lib/quiz.dart`) and implementing a restart flow.
- Widget decomposition and reuse: creating small widgets like `AnswerButton` (`lib/answer_button.dart`) and `QuestionSummary` (`lib/question_summary.dart`).
- Building layouts: using `Column`, `Expanded`, `ListView`, `SizedBox`, and `Container` to compose responsive UIs.
- Styling and theming: gradients, text styles, and button styling to achieve the app's look.
- Data modeling: representing questions and answers in `lib/data/questions.dart` and `lib/models/quiz_question.dart`.
- Conditional UI and feedback: showing correct/incorrect answers with green/red indicators in the results screen.
- Basic navigation patterns: switching views without a router by replacing the body widget in state.
- Debugging & iteration: using `flutter analyze`, hot reload, and quick UI tweaks while developing.



## Files to explore
- `lib/quiz.dart` — main quiz logic and screen switching
- `lib/result_screen.dart` — results UI and restart button
- `lib/question_summary.dart` — summary list with correct/wrong coloring
- `lib/question_screen.dart` — question UI and answer handling
- `lib/answer_button.dart` — reusable answer button widget
- `lib/data/questions.dart` — the quiz questions data

## Next ideas
- Add persistent high scores (local storage)
- Add animations when switching screens or showing answers
- Add timed quizzes or difficulty levels

Feel free to edit this README with notes about challenges you solved or features you want to add.
