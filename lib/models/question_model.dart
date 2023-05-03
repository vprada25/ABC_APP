import 'dart:math';

class Question {
  final String questionText;
  final String audioPath;
  final List<Answer> answersList;
  final String imagePath;

  Question(this.questionText, this.answersList, this.audioPath, this.imagePath);
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
    "¿cual es la pronunciacion correcta de la letra A?",
    [
      Answer("ie", false),
      Answer("hi", false),
      Answer("ei", true),
      Answer("bi", false),
    ],
    "sounds/a.mp3",
    "assets/images/a.png",
  ));

  list.add(Question(
    "¿la letra B se pronuncia?",
    [
      Answer("bi", true),
      Answer("hi", false),
      Answer("ei", false),
      Answer("ie", false),
    ],
    "sounds/b.mp3",
    "assets/images/b.png",
  ));

  list.add(Question(
    "¿la letra C se pronuncia?",
    [
      Answer("ci", true),
      Answer("si", false),
      Answer("zi", false),
      Answer("di", false),
    ],
    "sounds/c.mp3",
    "assets/images/c.png",
  ));

  list.add(Question(
    "¿cual letra se pronuncia 'di' en ingles?",
    [
      Answer("D", true),
      Answer("T", false),
      Answer("B", false),
      Answer("C", false),
    ],
    "sounds/d.mp3",
    "assets/images/d.png",
  ));
  list.add(Question(
    "¿cual letra se pronuncia 'i' en ingles?",
    [
      Answer("I", false),
      Answer("E", true),
      Answer("A", false),
      Answer("O", false),
    ],
    "sounds/e.mp3",
    "assets/images/e.png",
  ));
  list.add(Question(
    "¿cual letra se pronuncia 'ef' en ingles?",
    [
      Answer("F", true),
      Answer("E", false),
      Answer("A", false),
      Answer("O", false),
    ],
    "sounds/f.mp3",
    "assets/images/f.png",
  ));
  list.add(Question(
    "¿cual letra se pronuncia 'yi' en ingles?",
    [
      Answer("G", true),
      Answer("Y", false),
      Answer("A", false),
      Answer("O", false),
    ],
    "sounds/g.mp3",
    "assets/images/g.png",
  ));
  list.add(Question(
    "¿como se pronuncia la letra H?",
    [
      Answer("eich", true),
      Answer("hi", false),
      Answer("ei", false),
      Answer("bi", false),
    ],
    "sounds/h.mp3",
    "assets/images/h.png",
  ));
  list.add(Question(
    "¿cual letra se pronuncia 'ai' en ingles?",
    [
      Answer("I", true),
      Answer("E", false),
      Answer("A", false),
      Answer("O", false),
    ],
    "sounds/i.mp3",
    "assets/images/i.png",
  ));
  list.add(Question(
    "¿cual letra se pronuncia 'jei' en ingles?",
    [
      Answer("J", true),
      Answer("Y", false),
      Answer("A", false),
      Answer("O", false),
    ],
    "sounds/j.mp3",
    "assets/images/j.png",
  ));
  list.add(Question(
    "¿cual letra se pronuncia 'kei' en ingles?",
    [
      Answer("K", true),
      Answer("Y", false),
      Answer("A", false),
      Answer("O", false),
    ],
    "sounds/k.mp3",
    "assets/images/k.png",
  ));
  list.add(Question(
    "¿cual es la pronunciacion correcta de la letra L?",
    [
      Answer("el", true),
      Answer("ou", false),
      Answer("le", false),
      Answer("ll", false),
    ],
    "sounds/l.mp3",
    "assets/images/l.png",
  ));
  list.add(Question(
    "¿cual es la correcta pronunciacion de la letra M?",
    [
      Answer("em", true),
      Answer("ou", false),
      Answer("me", false),
      Answer("mm", false),
    ],
    "sounds/m.mp3",
    "assets/images/m.png",
  ));
  list.add(Question(
    "¿cual es la correcta pronunciacion de la letra N?",
    [
      Answer("en", true),
      Answer("ou", false),
      Answer("ne", false),
      Answer("nn", false),
    ],
    "sounds/n.mp3",
    "assets/images/n.png",
  ));
  list.add(Question(
    "¿cual es la correcta pronunciacion de la letra O?",
    [
      Answer("ou", true),
      Answer("o", false),
      Answer("e", false),
      Answer("a", false),
    ],
    "sounds/o.mp3",
    "assets/images/o.png",
  ));
  list.add(Question(
    "¿cual es la correcta pronunciacion de la letra P?",
    [
      Answer("pi", true),
      Answer("ou", false),
      Answer("pe", false),
      Answer("pp", false),
    ],
    "sounds/p.mp3",
    "assets/images/p.png",
  ));
  list.add(Question(
    "¿cual es la correcta pronunciacion de la letra Q?",
    [
      Answer("kiu", true),
      Answer("ou", false),
      Answer("qu", false),
      Answer("qq", false),
    ],
    "sounds/q.mp3",
    "assets/images/q.png",
  ));
  list.add(Question(
    "¿cual es la correcta pronunciacion de la letra R?",
    [
      Answer("ar", true),
      Answer("ou", false),
      Answer("re", false),
      Answer("rr", false),
    ],
    "sounds/r.mp3",
    "assets/images/r.png",
  ));
  list.add(Question(
    "¿cual es la correcta pronunciacion de la letra S?",
    [
      Answer("es", true),
      Answer("ou", false),
      Answer("se", false),
      Answer("ss", false),
    ],
    "sounds/s.mp3",
    "assets/images/s.png",
  ));
  list.add(Question(
    "¿cual es la correcta pronunciacion de la letra T?",
    [
      Answer("ti", true),
      Answer("ou", false),
      Answer("te", false),
      Answer("tt", false),
    ],
    "sounds/t.mp3",
    "assets/images/t.png",
  ));
  list.add(Question(
    "¿que letra se pronuncia 'iu' en ingles?",
    [
      Answer("U", true),
      Answer("E", false),
      Answer("A", false),
      Answer("O", false),
    ],
    "sounds/u.mp3",
    "assets/images/u.png",
  ));
  list.add(Question(
    "¿que letra se pronuncia 'uvi' en ingles?",
    [
      Answer("V", true),
      Answer("Y", false),
      Answer("A", false),
      Answer("O", false),
    ],
    "sounds/v.mp3",
    "assets/images/v.png",
  ));
  list.add(Question(
    "¿que letra se pronuncia 'dabliu' en ingles?",
    [
      Answer("W", true),
      Answer("Y", false),
      Answer("A", false),
      Answer("O", false),
    ],
    "sounds/w.mp3",
    "assets/images/w.png",
  ));
  list.add(Question(
    "¿que letra se pronuncia 'ex' en ingles?",
    [
      Answer("X", true),
      Answer("E", false),
      Answer("A", false),
      Answer("O", false),
    ],
    "sounds/x.mp3",
    "assets/images/x.png",
  ));
  list.add(Question(
    "¿que letra se pronuncia 'uai' en ingles?",
    [
      Answer("Y", true),
      Answer("E", false),
      Answer("A", false),
      Answer("O", false),
    ],
    "sounds/y.mp3",
    "assets/images/y.png",
  ));
  list.add(Question(
    "¿que letra se pronuncia 'set' en ingles?",
    [
      Answer("Z", true),
      Answer("E", false),
      Answer("A", false),
      Answer("O", false),
    ],
    "sounds/z.mp3",
    "assets/images/z.png",
  ));

  return list;
}

List<Question> getAnswerRandom(int rangeList, int rangeMax) {
  List<Question> questionRandom = [];

  int rangeMin = 0;

  Random random = Random();

  for (int i = 0; i < rangeList; i++) {
    int index = rangeMin + random.nextInt(rangeMax - rangeMin + 1);

    questionRandom.add(getQuestions()[index]);
  }

  return questionRandom;
}
