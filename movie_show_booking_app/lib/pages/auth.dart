import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _emailValue, _passwordValue;
  bool _acceptTerms = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Movie Booking',
            ),
          ),
        ),
        // backgroundColor: Theme.of(context).primaryColor,
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6), BlendMode.dstATop),
              image: AssetImage('assets/background.jpg'),
            )),
            padding: EdgeInsets.all(10),
            child: Center(
              child: SingleChildScrollView(
                child: Column(children: <Widget>[
                  TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.orange)),
                          labelText: 'E-Mail',
                          filled: true,
                          hintText: 'Enter your Email address',
                          fillColor: Colors.white),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (String value) {
                        setState(() {
                          _emailValue = value;
                        });
                      }),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                      decoration: InputDecoration(
                          labelText: 'Password',
                          filled: true,
                          hintText: 'Enter your Email address',
                          fillColor: Colors.white),
                      obscureText: true,
                      onChanged: (String value) {
                        setState(() {
                          _passwordValue = value;
                        });
                      }),
                  SwitchListTile(
                    activeColor: Colors.blue,
                    value: _acceptTerms,
                    onChanged: (bool value) {
                      setState(() {
                        _acceptTerms = value;
                      });
                    },
                    title: Text(
                      'Accept Terms',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  RaisedButton(
                    onPressed: (){
                      print(_emailValue +_passwordValue + _acceptTerms.toString());
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text(
                      'LOGIN',
                    ),
                    splashColor: Colors.blueGrey,
                  )
                ]),
              ),
            )),
      ),
    );
  }
}
