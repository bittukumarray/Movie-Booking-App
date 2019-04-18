import 'package:flutter/material.dart';

class EnglishMoviePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EnglishMoviePageState();
  }
}

class _EnglishMoviePageState extends State<EnglishMoviePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: Column(
            children: <Widget>[
              Text("English Movies"),
              Image.asset("assets/food.jpg"),
            ],
          ),
        ),
      ],
    );
    ;
  }
}
