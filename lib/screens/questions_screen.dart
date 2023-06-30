import 'package:flutter/material.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "What are the main building blocks of flutter UIs?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                  minimumSize: const Size.fromHeight(48),
                  backgroundColor: const Color.fromARGB(255, 37, 6, 88)),
              child: const Text("Placeholder"),
            ),
            const SizedBox(height: 8),
            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                  minimumSize: const Size.fromHeight(48),
                  backgroundColor: const Color.fromARGB(255, 37, 6, 88)),
              child: const Text("Placeholder"),
            ),
            const SizedBox(height: 8),
            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                  minimumSize: const Size.fromHeight(48),
                  backgroundColor: const Color.fromARGB(255, 37, 6, 88)),
              child: const Text("Placeholder"),
            ),
            const SizedBox(height: 8),
            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                  minimumSize: const Size.fromHeight(48),
                  backgroundColor: const Color.fromARGB(255, 37, 6, 88)),
              child: const Text("Placeholder"),
            ),
          ],
        ),
      ),
    );
  }
}
