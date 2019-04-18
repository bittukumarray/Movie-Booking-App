import 'package:flutter/material.dart';

class TeluguMoviePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TeluguMoviePageState();
  }
}

class _TeluguMoviePageState extends State<TeluguMoviePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: Column(
            children: <Widget>[
              Text("Telugu Movies"),
              Image.asset("assets/food.jpg"),
            ],
          ),
        ),
      ],
    );
    ;
  }
}
