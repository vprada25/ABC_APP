class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "Pregunta 1?",
    [
      Answer("repuesta", false),
      Answer("repuesta", false),
      Answer("repuesta", true),
      Answer("repuesta", false),
    ],
  ));

  list.add(Question(
    "Pregunta 2?",
    [
      Answer("repuesta", true),
      Answer("repuesta", false),
      Answer("repuesta", false),
      Answer("repuesta", false),
    ],
  ));

  list.add(Question(
    "Pregunta 3?",
    [
      Answer("repuesta", false),
      Answer("repuesta", false),
      Answer("repuesta", false),
      Answer("repuesta", true),
    ],
  ));

  list.add(Question(
    "Pregunta 4?",
    [
      Answer("repuesta", true),
      Answer("repuesta", false),
    ],
  ));

  return list;
}
