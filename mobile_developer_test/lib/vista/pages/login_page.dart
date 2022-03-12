import 'package:flutter/material.dart';
import 'package:flutter_meedu/flutter_meedu.dart';
import 'package:mobile_developer_test/Controller/login_controller.dart';
import 'package:mobile_developer_test/utils/local/responsive.dart';
import 'package:mobile_developer_test/utils/send_login.dart';
import 'package:mobile_developer_test/vista/routes/route.dart';
import 'package:mobile_developer_test/vista/widgets/inputf.dart';

final loginProvider = SimpleProvider(
  (_) => LoginController(),
);

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Resposive respon = Resposive(context);
    return ProviderListener<LoginController>(
      provider: loginProvider,
      builder: (_, controller) {
        return Scaffold(
          body: SingleChildScrollView(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                color: Colors.transparent,
                child: Form(
                  key: controller.formK,
                  child: Column(
                    children: [
                      SizedBox(
                        height: respon.dPorcentaje(5),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "INICIAR SESIÓN",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: respon.dPorcentaje(20),
                      ),
                      InputField(
                        TextPassword: TextInputType.emailAddress,
                        etiqueta: "Correo",
                        onChanged1: controller.changeEmail,
                        validation: (text) {
                          if (text == '') return "Campo Invalido";
                          if (!text!.contains("@")) {
                            return "Falta el @";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: respon.dPorcentaje(0.5),
                      ),
                      InputField(
                        obscureText: true,
                        etiqueta: "Contraseña",
                        onChanged1: controller.changePassword,
                        validation: (text) {
                          if (text == '') return null;
                          if (text!.trim().length < 5) {
                            return "Mínimo 5 caracteres";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: respon.dPorcentaje(10),
                      ),
                      ElevatedButton(
                        onPressed: () => sendLogin(context),
                        child: const Text("Iniciar Sesion"),
                      ),
                      SizedBox(
                        height: respon.dPorcentaje(3),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, RoutesPages.register);
                        },
                        child: const Text("Crear Cuenta"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
