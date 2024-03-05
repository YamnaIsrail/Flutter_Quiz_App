# Quiz App

This is a simple quiz app built using Flutter. The app presents a series of questions with multiple-choice answers to the user and calculates their total score based on their answers.

## Features

- Present questions with multiple-choice answers.
- Calculate the user's total score based on their answers.
- Restart the quiz to start over.

## Components

### Quiz Widget

The `Quiz` widget is responsible for rendering the questions and answer choices. It takes three parameters:

- `answerQuestion`: A callback function that handles when the user selects an answer.
- `questionIndex`: The index of the current question being displayed.
- `questions`: A list of maps containing the questions and their corresponding answer choices.

### Result Widget

The `Result` widget displays the user's total score and provides a button to restart the quiz. It takes two parameters:

- `totalScore`: The total score achieved by the user.
- `resetHandler`: A callback function to restart the quiz.

## How to Use

1. Initialize a list of questions with their answer choices.
2. Provide callbacks to handle answering questions and restarting the quiz.
3. Instantiate the `Quiz` widget with the appropriate parameters.
4. Instantiate the `Result` widget to display the user's score.
