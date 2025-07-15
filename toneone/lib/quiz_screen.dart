import 'package:flutter/material.dart';
import 'package:toneone/answer_button.dart';
import 'package:toneone/data/question.dart';


class QuizScreen extends StatefulWidget{
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() {
   return _QuizScreenTemplate();
  }
}


class _QuizScreenTemplate extends State<QuizScreen>{
  final questionData = questions[0];
  @override
  Widget build(context){
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
            questionData.text,
            style: TextStyle(
              color: Colors.white
            ),
          ),
          const SizedBox(height: 30,),
        AnswerButton(answerText: questionData.question[0], tapIn: (){}),
        AnswerButton(answerText: questionData.question[1], tapIn: (){}),
        AnswerButton(answerText: questionData.question[2], tapIn: (){}),
         
        ],
      ),
    );
  }
}