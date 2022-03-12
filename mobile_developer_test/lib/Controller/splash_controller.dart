import 'package:flutter_meedu/meedu.dart';
import 'package:mobile_developer_test/vista/routes/route.dart';

import '../models/authetication.dart';

class SplashController extends SimpleNotifier {
  final Authentication _authentication = Get.find();
  String? _routeName;

  SplashController() {
    initAuthentication();
  }

  String? get routeName => _routeName;

  void initAuthentication() async {
    final user = await _authentication.user;

    _routeName = user != null ? RoutesPages.login : RoutesPages.login;

    notify();
  }
}
