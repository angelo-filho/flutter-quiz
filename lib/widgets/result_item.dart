import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';

class ResultItem extends StatelessWidget {
  const ResultItem({
    super.key,
    required this.index,
    required this.answerSelected,
  });

  final int index;
  final String answerSelected;

  @override
  Widget build(BuildContext context) {
    var question = questions[index];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: answerSelected == question.answers[0]
                  ? Colors.blue[300]
                  : Colors.pink[200],
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '${index + 1}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  question.text,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  answerSelected,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white60),
                ),
                Text(
                  question.answers[0],
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[100],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
