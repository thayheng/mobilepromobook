import 'package:flutter/material.dart';
import 'package:promobook/ButtonNavigator/searchbar.dart';
import 'package:promobook/screen/Board.dart';
import 'package:promobook/screen/Forums.dart';
import 'package:promobook/screen/Notification.dart';
import 'package:promobook/screen/Places.dart';
import 'package:promobook/screen/Profile.dart';
import 'package:promobook/screen/Videos.dart';
import 'package:unicorndial/unicorndial.dart';
import 'dart:async';

class ButtonNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var childButtons = List<UnicornButton>();

    childButtons.add(
      UnicornButton(
        hasLabel: true,
        labelText: "Cinema",
        currentButton: FloatingActionButton(
          heroTag: "train",
          backgroundColor: Colors.orange,
          mini: true,
          child: Icon(Icons.movie),
          onPressed: () {},
        ),
      ),
    );

    childButtons.add(
      UnicornButton(
        hasLabel: true,
        labelText: "Coffee Shop",
        currentButton: FloatingActionButton(
          heroTag: "airplane",
          backgroundColor: Colors.orange,
          mini: true,
          child: Icon(Icons.local_cafe),
          onPressed: () {},
        ),
      ),
    );

    childButtons.add(
      UnicornButton(
        hasLabel: true,
        labelText: "Clothes Shop",
        currentButton: FloatingActionButton(
          heroTag: "directions",
          backgroundColor: Colors.orange,
          mini: true,
          child: Icon(Icons.store),
          onPressed: () {},
        ),
      ),
    );

    childButtons.add(
      UnicornButton(
        hasLabel: true,
        labelText: "Restaurant",
        currentButton: FloatingActionButton(
          heroTag: "directions",
          backgroundColor: Colors.orange,
          mini: true,
          child: Icon(Icons.fastfood),
          onPressed: () {},
        ),
      ),
    );

    return DefaultTabController(
      length: 5,
      child: Theme(
        data: ThemeData(brightness: Brightness.light),
        child: Scaffold(
          appBar: _AppBar(),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.dashboard), text: "Board"),
              Tab(icon: Icon(Icons.location_on), text: "Places"),
              Tab(icon: Icon(Icons.video_library), text: "Videos"),
              Tab(icon: Icon(Icons.chrome_reader_mode), text: "Forums"),
              Tab(icon: Icon(Icons.person_outline), text: "Profile"),
            ],
            unselectedLabelColor: Colors.black54,
            labelColor: Colors.orange,
            indicatorColor: Colors.orange,
          ),
          body: TabBarView(
            children: [
              BoardScreen(),
              PlacesScreen(),
              VideosScreen(),
              ForumsScreen(),
              ProfileScreen(),
            ],
          ),
          floatingActionButton: UnicornDialer(
            animationDuration: 10,
            parentButtonBackground: Colors.orange,
            orientation: UnicornOrientation.VERTICAL,
            parentButton: Icon(Icons.menu),
            childButtons: childButtons,
          ),
        ),
      ),
    );
  }
}

Widget _AppBar() {
  return AppBar(
    leading: Notification(),
    title: SearchBar(),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.chat,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    ],
    backgroundColor: Colors.orange,
  );
}

class Notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        color: Colors.orange,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ],
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Notification1()),
          );
        },
      ),
    );
  }
}
