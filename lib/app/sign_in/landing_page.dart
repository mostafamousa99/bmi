import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:newera/app/sign_in/sign_in_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:newera/services/auth.dart';

import 'home_page.dart';

class LandingPage extends StatefulWidget {
  final Authabs authbs;

  const LandingPage({Key key, @required this.authbs}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  Future<Usr> _user;
  Usr _us;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentusr();
    widget.authbs.authStateChanges.listen((event) {
      _us = event;
      print("event: ${event?.id}");
    });
  }

  void _updateuser(Future<Usr> user) {
    setState(() {
      _user = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      return Signinpage(
        authbs: widget.authbs,
        onsignin: _updateuser,
      );
    }
    return HomePage(
      authbs: widget.authbs,
      onsignout: () => _updateuser(null),
    );
  }

  Future<void> _currentusr() async {
    final Future<Usr> authuser = widget.authbs.currentuser();

    _updateuser(authuser);
  }
}
