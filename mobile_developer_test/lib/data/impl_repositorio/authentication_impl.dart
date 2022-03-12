import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobile_developer_test/models/authetication.dart';
import 'package:mobile_developer_test/models/user_data.dart';

class AuthenticationImpl implements Authentication {
  final FirebaseAuth _auth;
  User? _user;
  final Completer<void> _completer = Completer();

  AuthenticationImpl(this._auth) {
    initAuth();
  }

  @override
  Future<User?> get user async {
    await _completer.future;
    return _user;
  }

  void initAuth() async {
    _auth.authStateChanges().listen((User? user) {
      if (!_completer.isCompleted) {
        _completer.complete();
      }
      _user = user;
    });
  }

  @override
  Future<void> singOut() {
    return _auth.signOut();
  }

  @override
  Future<userDataResponse> loginEmailAndPassword(
      String email, String password) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = userCredential.user!;
      return userDataResponse(user, null);
    } on FirebaseAuthException catch (e) {
      return userDataResponse(null, e.code);
    }
  }
}
