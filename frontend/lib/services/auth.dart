import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // sign in anon

  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in email pass

  // register with email pass

  // sign in with google

  // register with google

  // sign out
}
