import 'package:naruto_quiz_app/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  int _score = 0;
  List<Question> _questionsBank = [
    Question(
        '1. Konohagakure\'s founders were the Senju and Uchiha clans', true),
    Question(
        '2. The shortest Hokage in his tenure was the Third Hokage', false),
    Question('3. Senju Hashirama is a Mokuton and Rinnegan user', false),
    Question('4. uchiha security police created by the second hokage', true),
    Question('5. Konohagakure adheres to a royal government system', false),
    Question('6. The Hokage is the supreme leader of the Anbu', true),
    Question('7. Kyubi is a beast that kept in Konoha', true),
    Question('8. In Pain\'s attack, Danzō had served as Hokage', false),
    Question(
        '9. The granddaughter of the First Hokage served as the Fifth Hokage',
        true),
    Question('10. Konoha lies in the country of fire', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionsBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestion() {
    return _questionsBank[_questionNumber].question;
  }

  bool getAnswer() {
    return _questionsBank[_questionNumber].answer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionsBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void addScore() {
    _score += 10;
  }

  int showScore() {
    return _score;
  }

  void reset() {
    _questionNumber = 0;
  }

  void reset_score() {
    _score = 0;
  }
}
