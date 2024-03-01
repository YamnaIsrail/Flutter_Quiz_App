import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetHandler;

  const Result(this.totalScore, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Your Score: $totalScore'),
          ElevatedButton(
            onPressed: resetHandler,
            child: const Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}