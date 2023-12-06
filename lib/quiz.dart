import 'package:flutter/material.dart';
import 'package:untitled2/home.dart';

import 'questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  late Widget activeScreen ;
  void changeActiveScreen(){
    setState(() {
      activeScreen =const Questions();
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
