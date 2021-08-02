import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Co2mmitFirebaseUser {
  Co2mmitFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

Co2mmitFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Co2mmitFirebaseUser> co2mmitFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<Co2mmitFirebaseUser>(
        (user) => currentUser = Co2mmitFirebaseUser(user));
