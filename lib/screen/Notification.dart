import 'package:flutter/material.dart';

class Notification1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Notification"),
      ),
      body: Center(
          child: Text('Go back!'),
      ),
    );
  }
}