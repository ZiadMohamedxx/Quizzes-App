import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summarydata, {super.key});

  final List<Map<String, Object>> summarydata;
  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summarydata.map((data) {
            return Row(
              children: [
                Text(((data['question-index'] as int) + 1).toString()),
                Expanded(
                  child: Column(
                    children: [
                      Text(data['question'] as String),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(data['user-answer'] as String),
                      Text(data['correct'] as String),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
