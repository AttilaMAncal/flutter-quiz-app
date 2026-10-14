
import 'package:flutter/material.dart';

import 'start_screen.dart';
import 'questions_screen.dart';
import 'results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'start-screen';

  final List<String> selectedAnswers = [];

  void startQuiz() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
  }

  void showResults() {
    setState(() {
      activeScreen = 'results-screen';
    });
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers.clear();
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(
      startQuiz: startQuiz,
    );

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
        onQuizFinished: showResults,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        selectedAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: screenWidget,
      ),
    );
  }
}
