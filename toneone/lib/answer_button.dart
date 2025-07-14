import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton ({super.key, required this.answerText, required this.tapIn});
  final String answerText;
  final void Function() tapIn;

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
            onPressed: tapIn,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
             backgroundColor: const Color.fromARGB(255, 33, 1, 95),
             foregroundColor: Colors.white,
            ),
            child: Text(answerText),
            );
  }
}