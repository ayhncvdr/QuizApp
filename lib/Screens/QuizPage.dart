import 'package:flutter/material.dart';
import 'package:quizodev/Screens/ResultPage.dart';
import 'package:quizodev/Service/Question.dart';
import 'package:quizodev/Service/QuizManager.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  QuizManager _manager = QuizManager();

  List<Widget> getOptions(Question question) {
    List<Widget> optionButtons = [];
    for (int i = 0; i < question.options.length; i++) {
      optionButtons.add(FlatButton(
        onPressed: () {
          _manager.nextQuestion(_manager.getCurrentQuestion().options[i].score);
          if (_manager.isFinished()) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ResultPage(
                      score: _manager.getTotalScore(),
                    )));
          }
          setState(() {});
        },
        child: Container(
          height: 50,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              '${_manager.getCurrentQuestion().options[i].text}',
              style: TextStyle(
                fontSize: 23,
              ),
            ),
          ),
        ),
      ));
    }
    return optionButtons;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text(
              'Questions ${_manager.getCurrentId()}/${_manager.totalQuestionNumber()}'),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Text(
                      '${_manager.getCurrentQuestion().text}',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: getOptions(_manager.getCurrentQuestion()),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
