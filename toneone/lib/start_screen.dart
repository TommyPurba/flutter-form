import 'package:flutter/material.dart';



class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            // 2 main way to use transparant 
            //1 opicity
            // Opacity(
            //   opacity: 0.5,
            //   child: Image.asset(
            //   'assets/images/quiz-logo.png',
            //   width: 300,
            //   ),
            // ),

            //2. color

            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: Color.fromARGB(150, 255, 255, 255),
              ),
            const SizedBox(height: 70,),
            const Text(
              'Learn Flutter The Fun Way!',
              style: TextStyle(
                fontSize: 29,
                color: Colors.white
                ),
            ), 
            const SizedBox(
              height: 40,
              ),
            OutlinedButton.icon(
              onPressed: startQuiz, 
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                )
              ),
              icon: Icon(
                Icons.arrow_right_alt,
                color: Colors.white,
              ),
              label: Text(
                "Let's Quiz!",
              )
              ),
          ],
        );
  }
}