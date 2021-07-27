import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newera/app/sign_in/sign_in_button.dart';
import 'package:newera/app/sign_in/sochial_sign_in_button.dart';
import 'package:newera/common_widget/customraiebutton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:newera/services/auth.dart';

class Signinpage extends StatelessWidget {
  final Function(Future<Usr>) onsignin;
  final Authabs authbs;

  Signinpage({@required this.onsignin, @required this.authbs});
  Future<void> _signinannomusly() async {
    final Future<Usr> authuser = authbs.signinannon();

    onsignin(authuser);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hi"),
        centerTitle: true,
        elevation: 2.0,
      ),
      body: _buildcontent(),
    );
  }

  Container _buildcontent() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "sign in",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 48.0,
          ),
          SochialSignInButton(
            asset: "assets/google-logo.png",
            text: "Sign in with Google",
            color: Colors.white,
            textcolor: Color(0xFF004D40),
            onpressed: () {},
          ),
          SizedBox(
            height: 10.0,
          ),
          SochialSignInButton(
            asset: "assets/facebook-logo.png",
            text: "Sign in with facebook",
            color: Colors.blue[800],
            textcolor: Colors.white,
            onpressed: () {},
          ),
          SizedBox(
            height: 10.0,
          ),
          Signinbutton(
            text: "sign in with email",
            color: Colors.green,
            textcolor: Colors.limeAccent,
            onpressed: () {},
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "or",
            style: TextStyle(color: Colors.brown),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.0,
          ),
          Signinbutton(
            text: "sign in with annon",
            color: Colors.lime,
            textcolor: Colors.brown,
            onpressed: _signinannomusly,
          ),
        ],
      ),
    );
  }
}
