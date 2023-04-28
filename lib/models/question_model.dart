class Question {
  final String questionText;
  final String audioPath;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList, this.audioPath);
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
    "sounds/a.mp3",
  ));

  list.add(Question(
    "Pregunta 2?",
    [
      Answer("repuesta", true),
      Answer("repuesta", false),
      Answer("repuesta", false),
      Answer("repuesta", false),
    ],
    "sounds/b.mp3",
  ));

  list.add(Question(
    "Pregunta 3?",
    [
      Answer("repuesta", false),
      Answer("repuesta", false),
      Answer("repuesta", false),
      Answer("repuesta", true),
    ],
    "sounds/c.mp3",
  ));

  list.add(Question(
    "Pregunta 4?",
    [
      Answer("repuesta", true),
      Answer("repuesta", false),
    ],
    "sounds/d.mp3",
  ));
  list.add(Question(
    "Pregunta 5?",
    [
      Answer("repuesta", true),
      Answer("repuesta", false),
    ],
    "sounds/e.mp3",
  ));
  list.add(Question(
    "Pregunta 6?",
    [
      Answer("repuesta", true),
      Answer("repuesta", false),
    ],
    "sounds/f.mp3",
  ));
  list.add(Question(
    "Pregunta 7?",
    [
      Answer("repuesta", true),
      Answer("repuesta", false),
    ],
    "sounds/g.mp3",
  ));
  list.add(Question(
    "Pregunta 8?",
    [
      Answer("repuesta", true),
      Answer("repuesta", false),
    ],
    "sounds/h.mp3",
  ));

  return list;
}
