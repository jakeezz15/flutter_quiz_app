import 'package:flutter/material.dart';

class SummaryData extends StatelessWidget {
  const SummaryData(
      {super.key,
      required this.answer,
      required this.correctAnswer,
      required this.question});

  final String question;
  final String answer;
  final String correctAnswer;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            answer,
            style: const TextStyle(color: Color.fromARGB(255, 217, 155, 248)),
          ),
          Text(correctAnswer,
              style:
                  const TextStyle(color: Color.fromARGB(255, 153, 204, 246))),
        ],
      ),
    );
  }
}
