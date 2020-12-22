import 'package:flutter/material.dart';
import 'package:quizodev/Screens/QuizPage.dart';
import 'package:quizodev/Screens/QuizPage2.dart';

void gotoQuizPage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPage()),
  );
}

void gotoQuizPage2(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPage2()),
  );
}

class HomePage extends StatelessWidget {
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
                gotoQuizPage(context);
              },
              child: Text('Genel Kültür'),
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
                gotoQuizPage2(context);
              },
              child: Text('Başkentler'),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.09,
          )
        ],
      ),
    );
  }
}
