import 'package:flutter/material.dart';
import 'package:naruto_quiz_app/quiz_page.dart';

void main() {
  runApp(KonohaApp());
}

class KonohaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}
