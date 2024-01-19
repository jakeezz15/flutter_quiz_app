import 'package:adv_basics/questions_summary/question_identifier.dart';
import 'package:adv_basics/questions_summary/summary_data.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  // Text(((data['question_index'] as int) + 1).toString()),

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Container(
                margin: const EdgeInsets.only(bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // margin: const EdgeInsets.only(left: 15, right: 15),
                    // alignment: Alignment.center,
                    // width: 40,
                    // height: 40,
                    // decoration: BoxDecoration(
                    //   color: data['correct_answer'] == data['answer']
                    //       ? Colors.green
                    //       : Colors.red,
                    //   shape: BoxShape.circle,
                    // ),
                    //     Text(
                    //   ((data['question_index'] as int) + 1).toString(),
                    //   style: const TextStyle(color: Colors.white),
                    // )
                    QuestionIdentifier(
                        colorIndicator:
                            data['correct_answer'] == data['answer'],
                        questionIdentifier:
                            (data['question_index'] as int) + 1),
                    const SizedBox(
                      width: 20,
                    ),
                    SummaryData(
                      answer: data['answer'] as String,
                      correctAnswer: data['correct_answer'] as String,
                      question: data['question'] as String,
                    )
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
