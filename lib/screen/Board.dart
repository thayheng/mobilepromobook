import 'package:flutter/material.dart';

class BoardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Board'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text('Board Screen'),
      ),
    );
  }
  
}