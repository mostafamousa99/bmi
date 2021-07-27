import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newera/services/auth.dart';

class HomePage extends StatelessWidget {
  final Function() onsignout;
  final Authabs authbs;

  const HomePage({@required this.onsignout, @required this.authbs});
  Future<void> _signoutannomusly() async {
    try {
      authbs.signout();
      onsignout();
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "home page",
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: _signoutannomusly,
            child: Text(
              "logout",
              style: TextStyle(fontSize: 15, color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
