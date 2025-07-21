  import 'package:flutter/material.dart';


  class QuestionSummary extends StatelessWidget{
    const QuestionSummary (this.summaryData,{super.key});

    final List<Map<String, Object>> summaryData;

    @override
    Widget build(BuildContext context) {
      return SizedBox(
        height: 300,
        child: SingleChildScrollView(
          child: Column(  
            children: summaryData.map(
            (data){
              return Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     // Bulatan nomor
                    CircleAvatar(
                      radius: 14,
                      backgroundColor: (data['user_answer']==data['correct_answer'])? Colors.blueAccent:Colors.redAccent,
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                      ),
                    ),
                    SizedBox(width: 12,),
                    // Teks soal & jawaban
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            data['question'] as String,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                            textAlign: TextAlign.left,
                          ),

                        const SizedBox(height: 5,),
                         //userand correct jawaban
                        Text(
                          data['user_answer'] as String,
                          style: TextStyle(
                              color: const Color.fromARGB(255, 246, 109, 109),
                              fontSize: 17,
                            ),
                            textAlign: TextAlign.left,
                        ),
                        Text(
                          data['correct_answer'] as String,
                          style: TextStyle(
                              color: const Color.fromARGB(255, 100, 181, 232),
                              fontSize: 17,
                            ),
                            textAlign: TextAlign.left,
                          ),
                      ],
                      ),
                    ),
                  ],
                ),
              );
            }
            ).toList(),
          ),
        ),
      );
    }
  }