/* 
elaborado por : Ing David Barriga Garay

Aplicativo con autenticación y registro con firebase, lista de 
titulos mediante Json, y manejo de camara. 

*/

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobile_developer_test/utils/dependecies.dart';
import 'package:mobile_developer_test/vista/routes/app_routes.dart';
import 'package:mobile_developer_test/vista/routes/route.dart';
import 'package:flutter_meedu/router.dart' as router;

const String apiBox = "api_data";
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  dependencies();
  await Hive.initFlutter();
  // ignore: unused_local_variable
  var box = await Hive.openBox(apiBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Develper',
      debugShowCheckedModeBanner: false,
      navigatorKey: router.navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //Ruta de inicialización.
      initialRoute: RoutesPages.splash,
      navigatorObservers: [
        router.observer,
      ],
      routes: appRoutes,
    );
  }
}
