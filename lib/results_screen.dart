import 'package:flutter/material.dart';
import 'package:second_app/data/dummy_questions.dart';
import 'package:second_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.choosenAnswer});

  final List<String> choosenAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswer.length; i++) {
      summary.add({
        'question-index': i,
        'question': questions[i].text,
        'correct': questions[i].answers[0],
        'user-answer': choosenAnswer[i]
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summarydata = getSummaryData();
    final numoftotalquestions = questions.length;
    final numofcorrectquestions = summarydata.where((data) {
      return data['user-answer'] == data['correct'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'you answerd correctly $numofcorrectquestions of $numoftotalquestions questions',
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                    style: TextStyle(
                      color: Color.fromARGB(255, 16, 0, 197),
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                    'Restart Quiz'))
          ],
        ),
      ),
    );
  }
}
