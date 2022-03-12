import 'package:flutter/material.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:mobile_developer_test/models/authetication.dart';
import 'package:mobile_developer_test/vista/routes/route.dart';

class CamarePage extends StatefulWidget {
  const CamarePage({Key? key}) : super(key: key);

  @override
  State<CamarePage> createState() => _CamarePageState();
}

class _CamarePageState extends State<CamarePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Camara"),
          TextButton(
            onPressed: () {
              Get.find<Authentication>().singOut();
              Navigator.pushReplacementNamed(context, RoutesPages.login);
            },
            child: const Text("Cerrar Sesión"),
          ),
        ],
      ),
    ));
  }
}
