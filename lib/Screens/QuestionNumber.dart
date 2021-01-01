import 'package:flutter/material.dart';

import 'QuizPage.dart';

class QuestionNumber extends StatefulWidget {
  int category;
  String difficulty;
  QuestionNumber({Key key, this.difficulty, this.category}) : super(key: key);
  @override
  _QuestionNumberState createState() => _QuestionNumberState();
}

class _QuestionNumberState extends State<QuestionNumber> {
  int category;
  String difficulty;
  int number;
  void gotoQuizPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (context) => QuizPage(
              number: number,
              difficulty: widget.difficulty,
              category: widget.category)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("QuestionNumber"),
      ),
      body: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                color: Colors.greenAccent,
                onPressed: () {
                  setState(() {
                    number = 5;
                    gotoQuizPage(context);
                  });
                },
                child: Text("5"),
              ),
              RaisedButton(
                color: Colors.greenAccent,
                onPressed: () {
                  setState(() {
                    number = 10;
                    gotoQuizPage(context);
                  });
                },
                child: Text("10"),
              ),
              RaisedButton(
                color: Colors.greenAccent,
                onPressed: () {
                  setState(() {
                    number = 15;
                    gotoQuizPage(context);
                  });
                },
                child: Text("15"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
