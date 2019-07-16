import 'package:flutter/material.dart';

class Notification1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Notification"),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        decoration: BoxDecoration(
          color: Colors.white30,
        ),
        child: Center(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              _boxNotification('1'),
              SizedBox(
                height: 2,
              ),
              _boxNotification('2'),
              SizedBox(
                height: 2,
              ),
              _boxNotification('3'),
              SizedBox(
                height: 2,
              ),
              _boxNotification('4'),
              SizedBox(
                height: 2,
              ),
              _boxNotification('5'),
              SizedBox(
                height: 2,
              ),
              _boxNotification('6'),
              SizedBox(
                height: 2,
              ),
              _boxNotification('7'),
              SizedBox(
                height: 2,
              ),
              _boxNotification('8'),
              SizedBox(
                height: 2,
              ),
              _boxNotification('9'),
              SizedBox(
                height: 2,
              ),
              _boxNotification('10'),
              SizedBox(
                height: 2,
              ),
              _boxNotification('11'),
              SizedBox(
                height: 2,
              ),
              _boxNotification('12'),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _boxNotification(image) {
  return Container(
    padding: EdgeInsets.all(8),
    height: 80,
    decoration: BoxDecoration(
      color: Colors.black12,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('lib/assets/' + image + '.jpg'),
                )
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('KOI Thé a new promotion within this month.'),
                Row(
                  children: <Widget>[
                    Text('3 hrs'),
                    Icon(
                      Icons.public,
                      size: 15,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ],
    ),
  );
}
