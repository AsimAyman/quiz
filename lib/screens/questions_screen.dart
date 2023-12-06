import 'package:flutter/material.dart';

import '../widgets/answer_buttom.dart';

class Questions extends StatelessWidget {
  const Questions({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Question 1....."),
          const SizedBox(
            height: 40,
          ),
        AnswerButton("answer1",(){}),
          AnswerButton("answer1",(){}),
          AnswerButton("answer1",(){}),
        ],
      ),
    );
  }
}
