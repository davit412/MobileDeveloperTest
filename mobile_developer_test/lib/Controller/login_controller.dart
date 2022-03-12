import 'package:flutter/material.dart';
import 'package:flutter_meedu/flutter_meedu.dart';
import 'package:mobile_developer_test/models/authetication.dart';
import 'package:mobile_developer_test/models/user_data.dart';

class LoginController extends SimpleNotifier {
  String _email = "", _password = "";
  final GlobalKey<FormState> formK = GlobalKey();
  final _login = Get.find<Authentication>();
  void changeEmail(String text) {
    _email = text;
  }

  void changePassword(String text) {
    _password = text;
  }

  Future<userDataResponse> sumbitLogin() {
    return _login.loginEmailAndPassword(
      _email,
      _password,
    );
  }
}
