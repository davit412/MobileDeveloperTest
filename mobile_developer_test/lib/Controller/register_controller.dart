import 'package:flutter/material.dart';
import 'package:flutter_meedu/flutter_meedu.dart';
import 'package:mobile_developer_test/Controller/register_state.dart';
import 'package:mobile_developer_test/models/register.dart';
import 'package:mobile_developer_test/models/user_data.dart';

class RegisterController extends StateNotifier<RegisterState> {
  RegisterController() : super(RegisterState.initState);

  final _register = Get.find<RegisterModels>();
  final GlobalKey<FormState> formK = GlobalKey();
  Future<userDataResponse> sumbit() {
    return _register.register(userData(
      userName: state.userName,
      email: state.email,
      password: state.password,
    ));
  }

  void changeUserName(String text) {
    state = state.copyWith(userName: text);
  }

  void changeEmail(String text) {
    state = state.copyWith(email: text);
  }

  void changePassword(String text) {
    state = state.copyWith(password: text);
  }

  void changeVPassword(String text) {
    state = state.copyWith(vPassword: text);
  }
}
