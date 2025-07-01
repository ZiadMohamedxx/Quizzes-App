import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    required this.answertext,
    required this.whentap,
    super.key,
  });

  final String answertext;
  final void Function() whentap;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: whentap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor: const Color.fromARGB(255, 7, 39, 155),
        foregroundColor: Colors.white,
      ),
      child: Text(
        answertext,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
