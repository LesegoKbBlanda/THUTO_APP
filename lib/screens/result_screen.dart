import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thuto_app/screens/main_menu.dart';
import 'package:thuto_app/screens/navbar.dart';
import 'package:thuto_app/ui/shared/color.dart';

class ResultScreen extends StatefulWidget {
  int score;
  ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              "View your score",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 45.0,
          ),
          Text(
            "You Score is",
            style: TextStyle(color: Colors.white, fontSize: 34.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "${widget.score}",
            style: TextStyle(
              color: Colors.black,
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainMenu(),
                  ));
            },
            shape: StadiumBorder(),
            color: Colors.white,
            padding: EdgeInsets.all(18.0),
            child: Text(
              "Reapeat the quizz",
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NavBar(),
                  ));
            },
            shape: StadiumBorder(),
            color: Colors.white,
            padding: EdgeInsets.all(18.0),
            child: Text(
              "Exit quizz",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
