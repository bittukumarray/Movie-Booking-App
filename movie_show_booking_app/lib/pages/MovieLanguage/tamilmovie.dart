import 'package:flutter/material.dart';

class TamilMoviePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TamilMoviePageState();
  }
}

class _TamilMoviePageState extends State<TamilMoviePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: Column(
            children: <Widget>[
              Text("Tamil Movies"),
              Image.asset("assets/food.jpg"),
            ],
          ),
        ),
      ],
    );
    ;
  }
}
