import 'package:flutter/material.dart';

class ForumsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
      child: ListView(
        children: <Widget>[
          _Cardforum(),
        ],
      ),
    ));
  }
}

Widget _Cardforum() {
  return Container(
    child: Column(),
  );
}

Widget _subCard() {}
