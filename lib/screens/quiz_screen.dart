import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:untitled2/data/questions_data.dart';
import 'package:untitled2/screens/home_screen.dart';
import 'package:untitled2/screens/result_screen.dart';

import 'questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  late Widget activeScreen ;
  List <String> userAnswers=[];

  void insertUserAnswers(String answer){
    userAnswers.add(answer);
    if(userAnswers.length==questions_data.length){
      setState(() {

        activeScreen= Home(changeActiveScreen);
        log(userAnswers.toString());
        activeScreen = ResultScreen(userAnswers: userAnswers);

      });

    }

  }
  void changeActiveScreen(){
    setState(() {
      activeScreen = Questions_Screen(insertUserAnswers);
    });
  }
  @override
  void initState() {
    super.initState();
    activeScreen =Home(changeActiveScreen);

  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:Scaffold(
        body: Container(
            decoration:const BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.deepPurpleAccent,
                Colors.purpleAccent
              ]),
            ),
            child:activeScreen),
      ),
    );
  }
}
