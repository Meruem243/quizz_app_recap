class QuizQuestion {
  const QuizQuestion(this.questionText, this.answers);

  final String questionText;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledAnswers = List<String>.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}
