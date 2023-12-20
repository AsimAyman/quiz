import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/data/questions_data.dart';

import '../widgets/summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.userAnswers, super.key});

  final List<String> userAnswers;

  List<Map<String, dynamic>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < userAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions_data[i].text,
        'correctAnswer': questions_data[i].answers[0],
        'userAnswer': userAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      child: Column(children: [
        const Text(
          'You Answered 3 out of 6 questions correctly!',
          style: TextStyle(
            color: Color.fromARGB(255, 250, 205, 254),
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 30,
        ),
        SummaryWidget( getSummaryData ),
        const Divider(color: Colors.tealAccent),
        const SizedBox(
          height: 30,
        ),
        TextButton.icon(
          icon: const Icon(Icons.restart_alt),
          onPressed: () {},
          label: const Text('Restart Quiz!'),
        ),
      ]),
    );
  }
}
