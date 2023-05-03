import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:ABC/models/models.dart';
import 'package:ABC/widgets/widgets.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Question> questionList = getAnswerRandom(5, getQuestions().length - 1);

  int score = 0;
  Answer? selectedAnswer;
  int currentQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AuthBackground(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          _questionWidget(),
          _answerList(),
          _nextButton(),
        ]),
      ),
    ));
  }

  _questionWidget() {
    AudioPlayer audioPlayer = AudioPlayer();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        Container(
            alignment: Alignment.center,
            width: double.infinity,
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(children: [
              Image.asset("assets/images/logo_app.png",
                  width: 100, height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pregunta ${currentQuestionIndex + 1}/${questionList.length.toString()}",
                    style: const TextStyle(
                      color: Colors.indigoAccent,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  MaterialButton(
                    onPressed: () async {
                      await playSound(audioPlayer,
                          questionList[currentQuestionIndex].audioPath);
                    },
                    color: Colors.indigoAccent,
                    shape: const CircleBorder(),
                    child: const Icon(
                      Icons.audiotrack_sharp,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Text(
                questionList[currentQuestionIndex].questionText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ])),
      ],
    );
  }

  Future<void> playSound(AudioPlayer audioPlayer, String path) {
    return audioPlayer.play(AssetSource(path));
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answersList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: isSelected ? Colors.orangeAccent : Colors.white,
          foregroundColor: isSelected ? Colors.white : Colors.black,
        ),
        child: Text(answer.answerText, style: const TextStyle(fontSize: 22)),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.isCorrect) {
              score++;
            }
            setState(() {
              selectedAnswer = answer;
            });
          }
        },
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }

    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: Colors.orangeAccent,
          foregroundColor: Colors.white,
        ),
        child: Text(isLastQuestion ? "Enviar" : "Siguiente",
            style: const TextStyle(fontSize: 26)),
        onPressed: () {
          if (isLastQuestion) {
            //display score
            showDialog(context: context, builder: (_) => _showScoreDialog());
          } else {
            //next question
            setState(() {
              selectedAnswer = null;
              currentQuestionIndex++;
            });
          }
        },
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;

    if (score >= questionList.length * 0.6) {
      //pass if 60 %
      isPassed = true;
    }
    String title = isPassed ? "Felicidades " : "Te falta un poco mas";

    return AlertDialog(
      title: Text(
        title,
        style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            isPassed
                ? "assets/images/celebration.png"
                : "assets/images/sad.png",
            width: 100,
            height: 100,
          ),
          Text(
            isPassed ? "estas aprendiendo, sigue así" : "sigue estudiando",
            style: const TextStyle(fontSize: 22),
          ),
          const SizedBox(height: 16),
          Text(
            "Has acertado: $score/${questionList.length}",
            style: const TextStyle(fontSize: 22),
          ),
          const SizedBox(height: 16),
          MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              disabledColor: Colors.grey,
              elevation: 0,
              minWidth: 400,
              height: 50,
              color: Colors.indigoAccent,
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'home');
              },
              child: const Text("Volver a aprender",
                  style: TextStyle(color: Colors.white, fontSize: 20))),
          const SizedBox(height: 16),
          MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              disabledColor: Colors.grey,
              elevation: 0,
              minWidth: 400,
              height: 50,
              color: Colors.indigoAccent,
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'quiz');
              },
              child: const Text("Repetir prueba",
                  style: TextStyle(color: Colors.white, fontSize: 20)))
        ],
      ),
    );
  }
}
