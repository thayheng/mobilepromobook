import 'package:flutter/material.dart';

class VideosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white30,
        ),
        child: Center(
          child: ListView(
            children: <Widget>[
              makePopularWidget(),
              SizedBox(
                height: 10,
              ),
              _CardBoard('12'),
              SizedBox(
                height: 10,
              ),
              _CardBoard('11'),
              SizedBox(
                height: 10,
              ),
              _CardBoard('10'),
              SizedBox(
                height: 10,
              ),
              _CardBoard('9'),
              SizedBox(
                height: 10,
              ),
              _CardBoard('8'),
              SizedBox(
                height: 10,
              ),
              _CardBoard('7'),
              SizedBox(
                height: 10,
              ),
              _CardBoard('6'),
              SizedBox(
                height: 10,
              ),
              _CardBoard('5'),
              SizedBox(
                height: 10,
              ),
              _CardBoard('4'),
              SizedBox(
                height: 10,
              ),
              _CardBoard('3'),
              SizedBox(
                height: 10,
              ),
              _CardBoard('2'),
              SizedBox(
                height: 10,
              ),
              _CardBoard('1'),
            ],
          ),
        ),
      ),
    );
  }

  Widget makePopularWidget() {
    return new Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 0.01, // has the effect of softening the shadow
            spreadRadius: 0.01, // has the effect of extending the shadow
          )
        ],
      ),
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      height: 100,
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            child: ListView(
                scrollDirection: Axis.horizontal,
                //shrinkWrap: true,
                children: makeContainers()),
          )
        ],
      ),
    );
  }

  int counter = 0;
  List<Widget> makeContainers() {
    List<Container> movieList = [];
    for (int i = 0; i < 12; i++) {
      counter++;
      movieList.add(
        new Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orange,
          ),
          padding: EdgeInsets.all(1),
          height: 80,
          width: 87,
          child: _subimagerow1(counter),
        ),
      );
      if (counter == 12) {
        counter = 0;
      }
    }
    return movieList;
  }
}

Widget _subimagerow1(counter) {
  return Row(
    children: <Widget>[
      SizedBox(
        width: 2,
      ),
      CircleAvatar(
        radius: 40,
        foregroundColor: Colors.orange,
        backgroundImage:
            AssetImage("lib/assets/" + counter.toString() + ".jpg"),
      ),
    ],
  );
}

Widget _CardBoard(counter) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 0.01, // has the effect of softening the shadow
          spreadRadius: 0.01, // has the effect of extending the shadow
        )
      ],
    ),
    padding: EdgeInsets.all(10),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/' + counter + '.jpg'),
                )
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Pizza Company'),
                Row(
                  children: <Widget>[
                    Text('3 hrs'),
                    Icon(
                      Icons.public,
                      size: 15,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Hello we have promotion today for 100% off. Only Today!')
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 300,
              width: 380,
              child: Image(
                image: AssetImage("lib/assets/" + counter + ".jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[Text('1.8K Likes')],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[Text('2.2K Shares')],
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 1,
          width: 500,
          child: const DecoratedBox(
            decoration: const BoxDecoration(
              color: Colors.black12,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.thumb_up,
                  color: Colors.black26,
                ),
                SizedBox(
                  width: 5,
                ),
                Text('Like'),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.map,
                  color: Colors.black26,
                ),
                SizedBox(
                  width: 5,
                ),
                Text('Map'),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Icon(
                  Icons.share,
                  color: Colors.black26,
                ),
                SizedBox(
                  width: 5,
                ),
                Text('Share'),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
