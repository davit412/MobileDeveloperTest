// ignore_for_file: camel_case_types

import 'package:firebase_auth/firebase_auth.dart';

class userData {
  final String userName, email, password;

  userData(
      {required this.userName, required this.email, required this.password});
}

class userDataResponse {
  final User? user;
  final String? error;

  userDataResponse(this.user, this.error);
}
