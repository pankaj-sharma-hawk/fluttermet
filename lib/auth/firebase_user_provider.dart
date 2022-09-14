import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FullterMet2FirebaseUser {
  FullterMet2FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

FullterMet2FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FullterMet2FirebaseUser> fullterMet2FirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<FullterMet2FirebaseUser>(
        (user) => currentUser = FullterMet2FirebaseUser(user));
