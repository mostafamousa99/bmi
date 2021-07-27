import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class Usr {
  Usr(@required this.id);
  final String id;
}

abstract class Authabs {
  Future<Usr> signinannon();
  Future<void> signout();
  Future<Usr> currentuser();
  Stream<Usr> get authStateChanges;
}

class Auth implements Authabs {
  final _firebaseauth = FirebaseAuth.instance;

  Usr _castuser(User user) {
    if (user == null) {
      return null;
    }
    return Usr(user.uid);
  }

  @override
  Stream<Usr> get authStateChanges {
    return _firebaseauth.authStateChanges().map(_castuser);
  }

  @override
  Future<Usr> signinannon() async {
    final UserCredential authuser = (await _firebaseauth.signInAnonymously());
    return _castuser(authuser.user);
  }

  @override
  Future<void> signout() async {
    await _firebaseauth.signOut();
  }

  @override
  Future<Usr> currentuser() async {
    final User authuser = (await _firebaseauth.currentUser);

    return _castuser(authuser);
  }
}
