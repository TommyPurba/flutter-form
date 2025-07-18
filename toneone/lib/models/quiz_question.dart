class QuizQuestion {
  const QuizQuestion (this.text, this.question);
  final String text;
  final List<String> question;

  List<String> getShuffleAnswer(){
    final shuffleList = List.of(question);
    shuffleList.shuffle();
    return shuffleList;
  }
}