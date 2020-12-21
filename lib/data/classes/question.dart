import 'package:flutter/foundation.dart';

class Question {
  final String question;
  final List<String> answers;
  final bool multipleCorrectAnswers;
  final int correctAnswer;
  final int answerPoints;
  final List<int> answersPoints;

  Question({
    @required this.question,
    @required this.answers,
    this.multipleCorrectAnswers = false,
    this.correctAnswer,
    this.answerPoints = 1,
    this.answersPoints,
  });
}
