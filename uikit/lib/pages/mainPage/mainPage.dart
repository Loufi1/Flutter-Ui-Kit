import 'package:uikit/widgets/uikit-card-button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {

  final GlobalKey<ScaffoldState> _mainPageKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _mainPageKey,
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            _mainPageKey.currentState.openDrawer();
                          },
                          child:Icon(
                            Icons.menu,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                        Spacer(flex: 1,),
                        Image(image: AssetImage('assets/logo.png'), width: 50, height: 50,),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(5),),
                    Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 10),
                            child: UikitCardButton(buttonName: "Fitbit", icon: Icon(
                              Icons.alarm,
                              color: Colors.white,
                            ),
                              backgroundColor: Colors.blueGrey[300],
                              height: 60,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                            child: UikitCardButton(buttonName: "Google Calendar", icon: Icon(
                              Icons.calendar_today,
                              color: Colors.white,
                            ),
                              backgroundColor: Colors.blueGrey[400],
                              height: 60,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                            child: UikitCardButton(buttonName: "DROPBOX", icon: Icon(
                              Icons.inbox,
                              color: Colors.white,
                            ),
                              backgroundColor: Colors.blueGrey[500],
                              height: 60,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                            child: UikitCardButton(buttonName: "LIFX", icon: Icon(
                              Icons.access_time,
                              color: Colors.white,
                            ),
                              backgroundColor: Colors.blueGrey[600],
                              height: 60,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                            child: UikitCardButton(buttonName: "Philips Hue", icon: Icon(
                              Icons.lightbulb_outline,
                              color: Colors.white,
                            ),
                              backgroundColor: Colors.blueGrey[700],
                              height: 60,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                            child: UikitCardButton(buttonName: "Sonos", icon: Icon(
                              Icons.surround_sound,
                              color: Colors.white,
                            ),
                              backgroundColor: Colors.blueGrey[800],
                              height: 60,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                            child: UikitCardButton(buttonName: "Gmail", icon: Icon(
                              Icons.mail,
                              color: Colors.white,
                            ),
                              backgroundColor: Colors.blueGrey[900],
                              height: 60,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(
          child: Container(
              color: Colors.grey[100],
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    DrawerHeader(
                      child: Container(
                        child: Image(image: AssetImage('assets/logo.png'), width: 50, height: 50,),
                      ),
                    ),
                    Spacer(),
                    ListTile(
                      leading: Icon(
                        Icons.account_circle,
                        color: Colors.blueGrey[300],
                        size: 25,
                      ),
                      title: Text(
                        'Account',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Padding(padding: EdgeInsets.only(top: 30),),
                    ListTile(
                      leading: Icon(
                        Icons.settings,
                        color: Colors.blueGrey[300],
                        size: 25,
                      ),
                      title: Text(
                        'Settings',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Padding(padding: EdgeInsets.only(top: 30),),
                    ListTile(
                      leading: Icon(
                        Icons.question_answer,
                        color: Colors.blueGrey[300],
                        size: 25,
                      ),
                      title: Text(
                        'help ?',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Spacer(),
                    ListTile(
                      leading: Icon(
                        Icons.exit_to_app,
                        color: Colors.red[300],
                        size: 25,
                      ),
                      title: Text(
                        'logout',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              )
          )
      ),
    );
  }
}
