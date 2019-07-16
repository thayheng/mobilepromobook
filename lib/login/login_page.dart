import 'package:flutter/material.dart';
import 'package:promobook/login/page.dart';

class LoginState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: _background(),
    );
  }
}

Widget _background() {
  return Container(
      constraints: new BoxConstraints.expand(
        height: 900.0,
      ),
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(top: 90, bottom: 450),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/images/login.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: <Widget>[
          Expanded(
              child: Column(
            children: <Widget>[
              Expanded(
                  child: Text(
                'PROMOBOOK',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.white),
              )),
              Expanded(
                  child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Accuracy',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Convenience',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Save',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white),
                    ),
                  ),
                ],
              )),
            ],
          )),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  'Sign In',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.orange),
                )),
                Expanded(
                    child: Text(
                  'Sign Up',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                )),
              ],
            ),
          )
        ],
      ));
}
