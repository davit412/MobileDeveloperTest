import 'package:flutter/widgets.dart' show Widget, BuildContext;
import 'package:mobile_developer_test/vista/pages/login_page.dart';
import 'package:mobile_developer_test/vista/pages/register_page.dart';
import 'package:mobile_developer_test/vista/pages/splash.dart';
import 'package:mobile_developer_test/vista/pages/tab_bar.dart';
import 'package:mobile_developer_test/vista/routes/route.dart';

Map<String, Widget Function(BuildContext)> get appRoutes => {
      RoutesPages.splash: (_) => const SplashPage(),
      RoutesPages.login: (_) => const LoginPage(),
      RoutesPages.register: (_) => const RegisterUserPage(),
      RoutesPages.tabBar: (_) => const Tab_Bar(),
    };
