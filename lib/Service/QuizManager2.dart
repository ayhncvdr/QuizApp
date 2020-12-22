import 'Option.dart';
import 'Question.dart';

class QuizManager2 {
  QuizManager2() {
    _questions.add(Question("Türkiye'nin başkenti neresidir?", [
      Option('İstanbul', 0),
      Option('Ankara', 10),
      Option('Bursa', 0),
      Option('Edirne', 0),
    ]));

    _questions.add(Question("İngiltere'nin başkenti neresidir?", [
      Option('Londra', 10),
      Option('Manchester', 0),
      Option('Liverpool', 0),
      Option('Brighton', 0),
    ]));
    _questions.add(Question("İtalya'nın başkenti neresidir?", [
      Option('Milano', 0),
      Option('Roma', 10),
      Option('Genoa', 0),
      Option('Palermo', 0),
    ]));

    _questions
        .add(Question("Amerika Birleşik Devletleri'nin başkenti neresidir?", [
      Option('New York', 0),
      Option('Chicago', 0),
      Option('Boston', 0),
      Option('Washington', 10),
    ]));
    _questions.shuffle();
    for (var question in _questions) {
      question.options.shuffle();
    }
  }
  List<Question> _questions = [];
  int _score = 0;
  int currentQuestionId = 0;
  void nextQuestion(score) {
    if (currentQuestionId < _questions.length) {
      _score += score;
      currentQuestionId++;
    }
    print(currentQuestionId);
  }

  int getTotalScore() => _score;
  int getCurrentId() => currentQuestionId + 1;
  int totalQuestionNumber() => _questions.length;
  bool isFinished() {
    return currentQuestionId >= _questions.length;
    /* if(currentQuestionId >= _questions.length -1) {
      return true;
    } else {
      return false;
    }
    */
  }

  Question getCurrentQuestion() {
    print('getCurrentQueestion $currentQuestionId');
    if (currentQuestionId < _questions.length) {
      return _questions[currentQuestionId];
    } else {
      return Question('', []);
    }
  }
}
