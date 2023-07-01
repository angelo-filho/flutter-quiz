import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/widgets/result_item.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.answers,
    required this.onRestartQuiz,
  });

  final List<String> answers;
  final void Function() onRestartQuiz;

  @override
  Widget build(BuildContext context) {
    int correctAnswersAmount = 0;

    for (var i = 0; i < questions.length; i++) {
      var question = questions[i];

      if (question.answers[0] == answers[i]) {
        correctAnswersAmount++;
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "You answered $correctAnswersAmount out of ${questions.length} questions correctly!",
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),
            SizedBox(
              height: 300,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ...questions.asMap().entries.map((question) {
                    int index = question.key;

                    return ResultItem(
                        index: index, answerSelected: answers[index]);
                  }),
                ],
              ),
            ),
            OutlinedButton.icon(
              onPressed: onRestartQuiz,
              icon: const Icon(Icons.refresh_outlined),
              label: const Text("Restart Quiz!"),
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
