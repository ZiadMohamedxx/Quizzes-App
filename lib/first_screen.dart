import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_app/styled_text.dart';

var start = Alignment.topRight;
var end = Alignment.bottomLeft;

class FirstScreen extends StatelessWidget {
  const FirstScreen(this.color1, this.color2, this.startquiz, {super.key});

  final void Function() startquiz;
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: start,
          end: end,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 310,
              //color: const Color.fromARGB(221, 204, 30, 30),
              //Opacity
            ),
            const SizedBox(
              height: 90,
            ),
            Text(
              'Learn Flutter the fun way!',
              style: GoogleFonts.bebasNeue(
                color: Colors.black,
                fontSize: 36.5,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton.icon(
              onPressed: () {
                startquiz();
              },
              icon: const Icon(Icons.workspace_premium_outlined),
              label: const StyledText('Start Quiz Now'),
            ),
          ],
        ),
      ),
    );
  }
}
