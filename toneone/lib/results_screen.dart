import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toneone/data/question.dart';
import 'package:toneone/question_summary.dart';



class ResultsScreen extends StatelessWidget{
  const ResultsScreen(this.refreshQuiz,{super.key, required this.chosenSelect});

  final List<String> chosenSelect;
  final void Function() refreshQuiz ;

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
    final summary = getSumaryData();
    final numTotalanswer = questions.length;
    final numCorrectanswer = summary.where((data){
        return data['correct_answer'] == data['user_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              "You answer $numCorrectanswer out of $numTotalanswer question correctly!",
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 221, 197, 248),
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
            const SizedBox(height: 30,),
            QuestionSummary(summary),
            const SizedBox(height: 30,),
            TextButton.icon(
              onPressed: refreshQuiz,
              icon: Icon(
                Icons.refresh,
                color: Colors.white,
              ), 
              label: Text(
                "Restard quiz",
                style: TextStyle(
                  color: Colors.white,
                ),),
            ),
          ],
        ),
      ),
    );
  }
  
}