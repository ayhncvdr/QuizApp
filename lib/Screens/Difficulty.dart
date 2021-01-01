import 'package:flutter/material.dart';
import 'package:quizodev/Screens/QuestionNumber.dart';

class Difficulty extends StatefulWidget {
  int category;
  Difficulty({Key key, this.category}) : super(key: key);
  @override
  _DifficultyState createState() => _DifficultyState();
}

class _DifficultyState extends State<Difficulty> {
  int category;
  String difficulty;
  void gotoQuestionNumber(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (context) => QuestionNumber(
              difficulty: difficulty, category: widget.category)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Difficulty"),
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
                    difficulty = 'easy';
                  });
                  gotoQuestionNumber(context);
                },
                child: Text("Kolay"),
              ),
              RaisedButton(
                color: Colors.greenAccent,
                onPressed: () {
                  setState(() {
                    difficulty = 'medium';
                  });
                  gotoQuestionNumber(context);
                },
                child: Text("Orta"),
              ),
              RaisedButton(
                color: Colors.greenAccent,
                onPressed: () {
                  setState(() {
                    difficulty = 'hard';
                  });
                  gotoQuestionNumber(context);
                },
                child: Text("Zor"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
