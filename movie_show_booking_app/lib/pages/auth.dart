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
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Movie Booking',
          ),
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
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
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                RaisedButton(
                  onPressed: () {
                    print(
                        _emailValue + _passwordValue + _acceptTerms.toString());
                    if (_acceptTerms) {
                      Navigator.pushReplacementNamed(context, '/home');
                    } else {
                      print("Kindly accept the term and condition");
                    }
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text(
                    'LOGIN',
                  ),
                  splashColor: Colors.blueGrey,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/registration');
                  },
                  child: Text("Not yet registered ?"),
                  color: Colors.red,
                )
              ]),
            ),
          )),
    );
  }
}
