import 'package:flutter/material.dart';
import 'package:newera/services/auth.dart';

import 'app/sign_in/landing_page.dart';
import 'app/sign_in/sign_in_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Mysasa());
}

class Mysasa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(
        authbs: Auth(),
      ),
      theme: ThemeData(primarySwatch: Colors.deepOrange),
    );
  }
}
