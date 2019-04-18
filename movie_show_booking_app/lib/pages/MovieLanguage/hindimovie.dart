import 'package:flutter/material.dart';

class HindiMoviePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HindiMoviePageState();
  }
}

class _HindiMoviePageState extends State<HindiMoviePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: Column(
            children: <Widget>[
              Text("Hindi Movies"),
              Image.asset("assets/food.jpg"),
            ],
          ),
        ),
      ],
    );
    ;
  }
}
