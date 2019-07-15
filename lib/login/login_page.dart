import 'package:flutter/material.dart';
import 'package:promobook/login/page.dart';

class LoginState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final bg = _background();

    return Scaffold(
      body: bg,
    );
  }
}

Widget _background() {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('lib/images/login.png'),
        fit: BoxFit.cover
      ),
    ),
  );
}
