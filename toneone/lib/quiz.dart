import 'package:flutter/material.dart';
import 'package:toneone/data/question.dart';
import 'package:toneone/quiz_screen.dart';
import 'package:toneone/results_screen.dart';
import 'package:toneone/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizTemplate();
  }
}

//cara pertama

// class _QuizTemplate extends State<Quiz>{

//   Widget ? activeScreen;

//   @override
//   void initState() {
//     super.initState();
//     activeScreen = StartScreen(swicthScreen);

//   }
//     void swicthScreen (){
//     setState(() {
//        activeScreen = const QuizScreen();
//     });
//   }

//   @override
//   Widget build(context){
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [
//             Color.fromRGBO(100, 29, 137, 1),Color.fromRGBO(211, 19, 233, 0.274)
//           ],
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter
//         ),
//       ),
//       child: Center(
//         child: activeScreen,
//       ),
//       );
//   }
// }

//cara kedua
class _QuizTemplate extends State<Quiz> {
  List<String> selectAnswer = [];
  var activeScreen = "activeScreen";

  void swicthScreen() {
    setState(() {
      activeScreen = "Quizscreen";
    });
  }

  void answerSelected(String answer) {
    selectAnswer.add(answer);

    if (selectAnswer.length == questions.length) {
      selectAnswer = [];
      setState(() {
        activeScreen = "resultScreen";
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(swicthScreen);
      if(activeScreen == 'Quizscreen'){
        screenWidget =  QuizScreen(onSelectAnswer: answerSelected,);
      }
      if(activeScreen == 'resultScreen'){
        screenWidget =  ResultsScreen(chosenSelect: selectAnswer,);
      }
      
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(100, 29, 137, 1),
            Color.fromRGBO(211, 19, 233, 0.274),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: screenWidget,
            // activeScreen == "activeScreen"
            //     ? StartScreen(swicthScreen)
            //     : QuizScreen(onSelectAnswer: answerSelected),
      ),
    );
  }
}
