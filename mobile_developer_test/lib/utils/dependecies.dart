import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:flutter_meedu/flutter_meedu.dart';
import 'package:mobile_developer_test/data/impl_repositorio/authentication_impl.dart';
import 'package:mobile_developer_test/data/impl_repositorio/register_impl.dart';
import 'package:mobile_developer_test/models/authetication.dart';
import 'package:mobile_developer_test/models/register.dart';

void dependencies() {
  Get.lazyPut<Authentication>(
    () => AuthenticationImpl(FirebaseAuth.instance),
  );

  Get.lazyPut<RegisterModels>(
    () => RegisterImpl(FirebaseAuth.instance),
  );
}
