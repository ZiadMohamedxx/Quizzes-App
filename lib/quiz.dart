import 'package:flutter/material.dart';
import 'package:second_app/data/dummy_questions.dart';
import 'package:second_app/first_screen.dart';
import 'package:second_app/questions_screen.dart';
import 'package:second_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  static const color1 = Color.fromARGB(255, 1, 34, 155);
  static const color2 = Color.fromARGB(355, 2, 34, 100);
  var activescreen = 'start-screen';

  List<String> selectedanswers = [];

  void chooseanswer(String answer) {
    selectedanswers.add(answer);

    if (selectedanswers.length == questions.length) {
      setState(() {
        activescreen = 'results-screen';
      });
    }
  }

  void switchscreen() {
    setState(() {
      activescreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenwidget = FirstScreen(color1, color2, switchscreen);

    if (activescreen == 'questions-screen') {
      screenwidget = QuestionsScreen(onSelectAnswer: chooseanswer);
    }

    if (activescreen == 'results-screen') {
      screenwidget = ResultsScreen(
        choosenAnswer: selectedanswers,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 1, 34, 155),
                Color.fromARGB(355, 2, 34, 100),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenwidget,
        ),
      ),
    );
  }
}
