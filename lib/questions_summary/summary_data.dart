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
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(answer),
          Text(correctAnswer),
        ],
      ),
    );
  }
}
