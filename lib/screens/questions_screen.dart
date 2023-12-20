import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled2/data/questions_data.dart';
import 'package:untitled2/model/QuizQuestions.dart';

import 'package:untitled2/widgets/answer_buttom.dart';

class Questions_Screen extends StatefulWidget {
  const Questions_Screen(this.insertUserAnswers,{super.key});
  final void Function(String answer) insertUserAnswers;

  @override
  State<Questions_Screen> createState() => _Questions_ScreenState();
}

class _Questions_ScreenState extends State<Questions_Screen> {
  late int index;
  late QuizQuestion currentQuestion ;

  @override
void initState() {
    super.initState();
    index = 0;
    currentQuestion = questions_data[index];
  }

  void nextQuestions(String userAnswer) {
    widget.insertUserAnswers(userAnswer);
    setState(() {
        index++;
        currentQuestion= questions_data[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,


        children: [
          Text(currentQuestion.text,style: GoogleFonts.dosis(fontWeight: FontWeight.bold),),
          const SizedBox(
            height: 40,
          ),
          ...currentQuestion.answers.map(
                (e) => AnswerButton(e, ()=>nextQuestions(e)),
              ),
        ],
      ),
    );
  }
}
