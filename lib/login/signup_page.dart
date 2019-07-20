import 'package:flutter/material.dart';
import 'package:promobook/login/page.dart';

class SignUpState extends State<Page> {
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
      constraints: BoxConstraints.expand(
        height: 900.0,
      ),
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(top: 90),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/images/login1.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
              child: Column(
                children: <Widget>[
                  Container(
                      child: Text(
                        'PROMOBOOK',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.white,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(10, 5),
                              blurRadius: 15,
                              color: Color.fromARGB(255, 0, 0, 0),
                            )
                          ],
                        ),
                      )),
                  Container(
                      padding: EdgeInsets.only(left: 30),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Accuracy',
                              textAlign: TextAlign.right,
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
                              textAlign: TextAlign.left,
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
          Container(
            padding: EdgeInsets.only(top: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GestureDetector(
                    onTap: (){
                      print('Sing In');
                    },
                    child: Text(
                      'Sign In',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromRGBO(255, 165, 0, 10)),
                    )),
                GestureDetector(
                    onTap: (){
                      print('Sing Up');
                    },
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