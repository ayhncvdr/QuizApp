import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  int score;
  ResultPage({Key key, this.score}) : super(key: key);
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text(' Sonuç '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.greenAccent,
              child: Icon(
                Icons.done_all,
                size: 100,
                color: Colors.black,
              ),
              radius: 70,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              'Testi tamamladınız! Puanınız',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              '${widget.score}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
          ],
        ),
      ),
    );
  }
}
