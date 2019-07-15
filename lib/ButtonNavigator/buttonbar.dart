import 'package:flutter/material.dart';
import 'package:promobook/screen/Board.dart';
import 'package:promobook/screen/Forums.dart';
import 'package:promobook/screen/Places.dart';
import 'package:promobook/screen/Profile.dart';
import 'package:promobook/screen/Videos.dart';

class ButtonNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return DefaultTabController(
        length: 5,
        child: Theme(
          data: ThemeData(brightness: Brightness.light),
          child: Scaffold(
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
          ),
        ));
  }
}