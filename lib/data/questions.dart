
class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> get shuffledAnswers {
    final shuffledList = List<String>.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}

const questions = [
  QuizQuestion(
    'What is Flutter?',
    [
      'A UI development framework',
      'A database',
      'A programming language',
      'An operating system',
    ],
  ),
  QuizQuestion(
    'Which programming language does Flutter use?',
    [
      'Dart',
      'Java',
      'Python',
      'JavaScript',
    ],
  ),
  QuizQuestion(
    'What is a widget in Flutter?',
    [
      'A building block of the user interface',
      'A database table',
      'A programming error',
      'A network connection',
    ],
  ),
  QuizQuestion(
    'Which widget can change its state?',
    [
      'StatefulWidget',
      'StatelessWidget',
      'Text',
      'Icon',
    ],
  ),
  QuizQuestion(
    'Which method updates the UI in a StatefulWidget?',
    [
      'setState()',
      'buildApp()',
      'updateScreen()',
      'refresh()',
    ],
  ),
];