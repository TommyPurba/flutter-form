import 'package:flutter/material.dart';
import 'package:toneone/quiz_screen.dart';
import 'package:toneone/start_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz ({super.key});

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
class _QuizTemplate extends State<Quiz>{

  var activeScreen = "activeScreen";



    void swicthScreen (){
    setState(() {
       activeScreen = "Quizscreen";
    });
  }

  @override
  Widget build(context){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(100, 29, 137, 1),Color.fromRGBO(211, 19, 233, 0.274)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        ),
      ),
      child: Center(
        child: activeScreen == "activeScreen" ? StartScreen(swicthScreen): QuizScreen(),
      ),
      );
  }
}