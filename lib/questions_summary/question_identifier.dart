import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key,
      required this.questionIdentifier,
      required this.colorIndicator});

  final int questionIdentifier;
  final bool colorIndicator;

  @override
  Widget build(context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: colorIndicator
              ? const Color.fromARGB(255, 131, 222, 134)
              : const Color.fromARGB(255, 247, 69, 69),
          borderRadius: BorderRadius.circular(100)),
      child: Text(
        questionIdentifier.toString(),
        style:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}
