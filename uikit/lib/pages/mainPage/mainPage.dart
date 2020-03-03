import 'package:uikit/services/colorConverter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {

  final GlobalKey<ScaffoldState> _mainPageKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _mainPageKey,
      backgroundColor: HexColor("17223B"),
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
                            color: Colors.blueGrey[100],
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: <Widget>[

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
              color: HexColor("17223B"),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    DrawerHeader(
                      child: Container(
                        child: Image(image: AssetImage('assets/cerf.png'), width: 150, height: 150,),
                      ),
                    ),
                    Spacer(),
                    ListTile(
                      leading: Icon(
                        Icons.account_circle,
                        color: Colors.blueGrey[100],
                        size: 25,
                      ),
                      title: Text(
                        'Account',
                        style: TextStyle(
                          color: Colors.blueGrey[100],
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
                        color: Colors.blueGrey[100],
                        size: 25,
                      ),
                      title: Text(
                        'Settings',
                        style: TextStyle(
                          color: Colors.blueGrey[100],
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
                        color: Colors.blueGrey[100],
                        size: 25,
                      ),
                      title: Text(
                        'help ?',
                        style: TextStyle(
                          color: Colors.blueGrey[100],
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
                        Icons.contacts,
                        color: Colors.blueGrey[100],
                        size: 25,
                      ),
                      title: Text(
                        'Contact',
                        style: TextStyle(
                          color: Colors.blueGrey[100],
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
                          color: Colors.red[300],
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
