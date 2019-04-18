import 'package:flutter/material.dart';

class AllMovieView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AllMovieViewState();
  }
}

class _AllMovieViewState extends State<AllMovieView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: Column(
            children: <Widget>[
              Text("All Movies"),
              Image.asset("assets/food.jpg"),
            ],
          ),
        ),
        Text("data"),
        Image.asset("assets/food.jpg"),
        Text("data2"),
        Text("data3"),
      ],
    );
  }
}
