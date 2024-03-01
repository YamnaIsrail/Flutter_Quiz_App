import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final Function(int) answerQuestion;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  const Quiz({
    required this.answerQuestion,
    required this.questionIndex,
    required this.questions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          questions[questionIndex]['questionText'] as String,
          style: TextStyle(fontSize: 20), // Example text style
        ),
        SizedBox(height: 20), // Add space between question and answers
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Column(
            children: [
              ElevatedButton(
                onPressed: () => answerQuestion(answer['score'] as int),
                child: Container(
                  padding: EdgeInsets.all(10), // Add padding for button content
                  child: Text(answer['text'] as String),
                ),
              ),
              SizedBox(height: 10), // Add space between buttons
            ],
          );
        }).toList(),
      ],
    );
  }
}
