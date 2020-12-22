import 'Option.dart';
import 'Question.dart';

class QuizManager {
  QuizManager() {
    _questions.add(Question('Fenerbahçe kaç yılında kurulmuştur?', [
      Option('1907', 10),
      Option('1905', 0),
      Option('1903', 0),
      Option('1961', 0),
    ]));

    _questions.add(Question("Ay'a ayak basan ilk insan kimdir?", [
      Option('Neil Armstrong', 10),
      Option('Michael Collins', 0),
      Option('Buzz Aldrin', 0),
      Option('Yuri Gagarin', 0),
    ]));
    _questions
        .add(Question("İstanbul'un içme suyu hangi kaynaktan karşılanıyor?", [
      Option('Yeraltı Suyu', 0),
      Option('Marmara Denizi', 0),
      Option('Yüzey Suyu', 10),
      Option('Yüzey suyu ve yeraltı suyu', 0),
    ]));

    _questions
        .add(Question('Aşağıdakilerden hangisi bir radyasyon birimidir?', [
      Option('ppm', 0),
      Option('kcal', 0),
      Option('kWh', 0),
      Option('Sievert', 10),
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
