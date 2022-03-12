import 'package:flutter/material.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:mobile_developer_test/models/authetication.dart';
import 'package:mobile_developer_test/vista/routes/route.dart';

class TitleListPage extends StatefulWidget {
  const TitleListPage({Key? key}) : super(key: key);

  @override
  State<TitleListPage> createState() => _TitleListPageState();
}

class _TitleListPageState extends State<TitleListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("titulo"),
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
