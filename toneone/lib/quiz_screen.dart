import 'package:flutter/material.dart';
import 'package:toneone/answer_button.dart';
import 'package:toneone/data/question.dart';
import 'package:google_fonts/google_fonts.dart';


class QuizScreen extends StatefulWidget{
  const QuizScreen({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer ;
  @override
  State<QuizScreen> createState() {
   return _QuizScreenTemplate();
  }
}


class _QuizScreenTemplate extends State<QuizScreen>{
  var currentQuestionIndex = 0;

  void answerQuestion(String answer){

    widget.onSelectAnswer(answer);


    setState(() {
      
      currentQuestionIndex++;
    });
  }
  
  @override
  Widget build(context){
    final questionData = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Text(
              questionData.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 201, 153, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30,),
            ...questionData.getShuffleAnswer().map((answer){
             return AnswerButton(
              answerText: answer, tapIn: (){
                answerQuestion(answer);
              }
             );
            }
            ),
           
          ],
        ),
      ),
    );
  }
}