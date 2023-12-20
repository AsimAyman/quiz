import 'package:flutter/material.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget(this.summary,{super.key});
   final  List Function ()  summary;
  @override
  Widget build(BuildContext context) {
    return
        Column(children: [
        ...
            summary().map(
          (e) => Column(children: [
        Row(
          children: [
            CircleAvatar(
              radius: 16,
              backgroundColor: e['userAnswer'] == e['correctAnswer']
                  ? Colors.green
                  : Colors.red,
              child: Text(
                (e['question_index']).toString(),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    e['question']!.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    e['userAnswer']!.toString(),
                  ),
                  Text(
                    e['correctAnswer']!.toString(),
                    style: const TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    ),
   ] );
  }
}
