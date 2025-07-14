import 'package:flutter/material.dart';
import 'package:toneone/answer_button.dart';


class QuizScreen extends StatefulWidget{
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() {
   return _QuizScreenTemplate();
  }
}


class _QuizScreenTemplate extends State<QuizScreen>{
  @override
  Widget build(context){
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Question....',
            style: TextStyle(
              color: Colors.white
            ),
          ),
          const SizedBox(height: 30,),
        AnswerButton(answerText: "answerText", tapIn: (){}),
        AnswerButton(answerText: "answerText", tapIn: (){}),
        AnswerButton(answerText: "answerText", tapIn: (){}),
         
        ],
      ),
    );
  }
}