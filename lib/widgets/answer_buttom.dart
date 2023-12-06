
import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answers, this.fun,{super.key});
  final String answers;
  final Function () fun;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 10,
      ),
      ElevatedButton(onPressed: fun, child: Text(answers))
    ]);
  }
}
