import 'package:flutter/material.dart';
import './allmovie_listview.dart';
import './MovieLanguage/englishmovie.dart';
import './MovieLanguage/hindimovie.dart';
import './MovieLanguage/tamilmovie.dart';
import './MovieLanguage/telugumovie.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          drawer: Drawer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                AppBar(
                  automaticallyImplyLeading: false,
                  title: Text("Choose"),
                ),
                new ClipOval(
                  child: Image.asset(
                    "assets/food.jpg",
                    height: 150.0,
                    width: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
                new ClipOval(
                  child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/en/0/0d/Avengers_Endgame_poster.jpg",
                    height: 120.0,
                    width: 120.0,
                    fit: BoxFit.cover,
                  ),
                ),
                ListTile(
                  title: Text("Edit Profile"),
                ),
                ListTile(
                  title: Text("See History"),
                )
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: Theme.of(context).accentColor,
            title: Center(
              child: Text("Home Page"),
            ),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: "All Movies",
                ),
                Tab(
                  text: "Hindi Movies",
                ),
                Tab(
                  text: "English Movies",
                ),
                Tab(
                  text: "Telugu Movies",
                ),
                Tab(
                  text: "Tamil Movies",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              AllMovieView(),
              HindiMoviePage(),
              EnglishMoviePage(),
              TeluguMoviePage(),
              TamilMoviePage(),
            ],
          )
          // Card(
          // child: Container(
          // width: 700,
          // height: 400,
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage("assets/food.jpg"),
          //     fit: BoxFit.fitWidth,
          //     alignment: Alignment.center,
          //   ),
          // ),
          // child: Text("YOUR TEXT"),
          // child: MovieView(),
          ),
    );
  }
}
