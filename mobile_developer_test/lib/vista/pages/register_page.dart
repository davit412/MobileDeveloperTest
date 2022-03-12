import 'package:flutter/material.dart';
import 'package:flutter_meedu/state.dart';
import 'package:mobile_developer_test/Controller/register_controller.dart';
import 'package:mobile_developer_test/Controller/register_state.dart';
import 'package:mobile_developer_test/utils/local/responsive.dart';
import 'package:mobile_developer_test/utils/send_register.dart';
import 'package:mobile_developer_test/vista/routes/route.dart';
import 'package:mobile_developer_test/vista/widgets/inputf.dart';

import 'package:flutter_meedu/meedu.dart';

final registerProvider = StateProvider<RegisterController, RegisterState>(
  (_) => RegisterController(),
  autoDispose: false,
);

class RegisterUserPage extends StatefulWidget {
  const RegisterUserPage({Key? key}) : super(key: key);

  @override
  State<RegisterUserPage> createState() => _RegisterUserPageState();
}

class _RegisterUserPageState extends State<RegisterUserPage> {
  @override
  Widget build(BuildContext context) {
    final Resposive respon = Resposive(context);
    return ProviderListener<RegisterController>(
      provider: registerProvider,
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
                            "REGISTRAR USUARIO",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: respon.dPorcentaje(5),
                      ),
                      InputField(
                        etiqueta: "Usuario",
                        onChanged1: controller.changeUserName,
                        validation: (text) {
                          if (text == '') return "Campo invalido";
                          return isValidateText(text) ? null : "Campo invalido";
                        },
                      ),
                      SizedBox(
                        height: respon.dPorcentaje(0.5),
                      ),
                      InputField(
                        TextPassword: TextInputType.emailAddress,
                        etiqueta: "Correo",
                        onChanged1: controller.changeEmail,
                        validation: (text) {
                          if (text == '') return "Campo invalido";
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
                        height: respon.dPorcentaje(0.5),
                      ),
                      InputField(
                        obscureText: true,
                        etiqueta: "Confirmar contraseña",
                        onChanged1: controller.changeVPassword,
                        validation: (text) {
                          if (text == '') return null;
                          if (controller.state.password != text) {
                            return "No coincide contraseña";
                          }
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
                        onPressed: () => sendRegister(context),
                        child: const Text("Crear cuenta"),
                      ),
                      SizedBox(
                        height: respon.dPorcentaje(3),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, RoutesPages.login);
                        },
                        child: const Text("Iniciar Sesion"),
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

  bool isValidateText(String? text) {
    return RegExp(r"^[a-zA-Z]+$").hasMatch(text!);
  }
}
