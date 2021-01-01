import 'package:flutter/material.dart';
import 'package:quizodev/Screens/Difficulty.dart';
import 'package:quizodev/Screens/QuizPage2.dart';

void gotoQuizPage2(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPage2()),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int category;

  void gotoDifficultyPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => Difficulty(category: category)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Center(child: Text('Quiz App'))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Text(
                'Merhaba, Quiz Uygulamasına Hoşgeldiniz.',
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.05,
            child: RaisedButton(
              color: Colors.greenAccent,
              onPressed: () {
                setState(() {
                  category = 18;
                });
                gotoDifficultyPage(context);
              },
              child: Text('Computer'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.05,
            child: RaisedButton(
              color: Colors.greenAccent,
              onPressed: () {
                setState(() {
                  category = 19;
                });
                gotoDifficultyPage(context);
              },
              child: Text('Mathematics'),
            ),
          ),
        ],
      ),
    );
  }
}
