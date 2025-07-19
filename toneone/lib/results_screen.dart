import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:toneone/data/question.dart';
import 'package:toneone/question_summary.dart';



class ResultsScreen extends StatelessWidget{
  const ResultsScreen({super.key, required this.chosenSelect});

  final List<String> chosenSelect;

  List<Map<String, Object>> getSumaryData() {
   final List<Map<String, Object>> summary =[];
   for(var i=0; i<chosenSelect.length;i++){
    summary.add(
      {
        'question_index' : i,
      'question' : questions[i].text,
      'correct_answer' : questions[i].question[0],
      'user_answer' : chosenSelect[i] 
      },
    );
   }
    return summary;
    }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You answer X out of Y question correctly!"),
            const SizedBox(height: 30,),
            QuestionSummary(getSumaryData()),
            const SizedBox(height: 30,),
            TextButton(onPressed: (){}, child: Text("Restard quiz"),
            ),
          ],
        ),
      ),
    );
  }
  
}