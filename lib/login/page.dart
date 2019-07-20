import 'package:flutter/material.dart';

class Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Logo();
  }
}

class _Logo extends State<Page> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Widget _bgWidget() {
      return Expanded(
          flex: 1,
          child: ListView(
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(
                  height: 184,
                ),
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top: 90),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/login.png'),
                    fit: BoxFit.cover
                  ),
                ),
              )
            ],
      ));
    }

    Widget _tabWidget() {
      return Expanded(
          flex: 3,
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: <Widget>[
                Container(
                  constraints: BoxConstraints.expand(height: 60),
                  child: TabBar(
                      tabs: [
                        Tab(
                          child: Container(
                            child: Text('sign in'.toUpperCase(), style: TextStyle(color: Colors.orange)),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text('sign up'.toUpperCase(), style: TextStyle(color: Colors.orange)),
                          ),
                        ),
                      ]
                  ),
                ),
                Expanded(
                    child: Container(
                      child: TabBarView(
                          children: [

                            // SIGN IN
                            ListView(
                              children: <Widget>[
                                Column(
                                children: <Widget>[
                                  Container(
                                    width: MediaQuery.of(context).size.width/1.2,
                                    margin: EdgeInsets.only(top: 80),
                                    height: 45,
                                    padding: EdgeInsets.only(
                                        top: 2,left: 16, right: 16, bottom: 2
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)
                                        ),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 5
                                          )
                                        ]
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        icon: Icon(Icons.email,
                                          color: Colors.grey,
                                        ),
                                        hintText: 'Email',
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width/1.2,
                                    height: 45,
                                    margin: EdgeInsets.only(top: 32),
                                    padding: EdgeInsets.only(
                                        top: 2,left: 16, right: 16, bottom: 2
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)
                                        ),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 5
                                          )
                                        ]
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        icon: Icon(Icons.vpn_key,
                                          color: Colors.grey,
                                        ),
                                        hintText: 'Password',
                                      ),
                                    ),
                                  ),

                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 16, right: 32
                                      ),
                                      child: Text('Forgot Password ?',
                                        style: TextStyle(
                                            color: Colors.grey
                                        ),
                                      ),
                                    ),
                                  ),

                                  Container(
                                    height: 45,
                                    margin: EdgeInsets.only(top: 50),
                                    width: MediaQuery.of(context).size.width/2,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFFf45d27),
                                            Color(0xFFf5851f)
                                          ],
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)
                                        )
                                    ),
                                    child: Center(
                                      child: Text('Sign In'.toUpperCase(),
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                            ),

                            // SIGN UP
                            ListView(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Container(
                                      width: MediaQuery.of(context).size.width/1.2,
                                      margin: EdgeInsets.only(top: 80),
                                      height: 45,
                                      padding: EdgeInsets.only(
                                          top: 2,left: 16, right: 16, bottom: 2
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50)
                                          ),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black12,
                                                blurRadius: 5
                                            )
                                          ]
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          icon: Icon(Icons.email,
                                            color: Colors.grey,
                                          ),
                                          hintText: 'Email',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width/1.2,
                                      height: 45,
                                      margin: EdgeInsets.only(top: 32),
                                      padding: EdgeInsets.only(
                                          top: 2,left: 16, right: 16, bottom: 2
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50)
                                          ),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black12,
                                                blurRadius: 5
                                            )
                                          ]
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          icon: Icon(Icons.vpn_key,
                                            color: Colors.grey,
                                          ),
                                          hintText: 'Password',
                                        ),
                                      ),
                                    ),

                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 16, right: 32
                                        ),
                                        child: Text('Forgot Password ?',
                                          style: TextStyle(
                                              color: Colors.grey
                                          ),
                                        ),
                                      ),
                                    ),

                                    Container(
                                      height: 45,
                                      margin: EdgeInsets.only(top: 50),
                                      width: MediaQuery.of(context).size.width/2,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xFFf45d27),
                                              Color(0xFFf5851f)
                                            ],
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50)
                                          )
                                      ),
                                      child: Center(
                                        child: Text('sign up'.toUpperCase(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ]
                      ),
                    )
                ),
              ],
            ),
          )
      );
    }

    return Scaffold(
      body: Column(
        children: <Widget>[
          _bgWidget(),
          _tabWidget(),
        ],
      )
    );
  }
}
