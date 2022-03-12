import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobile_developer_test/models/user_data.dart';

abstract class Authentication {
  Future<User?> get user;

  Future<void> singOut();

  Future<userDataResponse> loginEmailAndPassword(
    String email,
    String password,
  );
}
