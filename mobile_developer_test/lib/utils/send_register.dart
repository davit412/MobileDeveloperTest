import 'package:flutter/material.dart';
import 'package:mobile_developer_test/utils/local/dialogs.dart';
import 'package:mobile_developer_test/vista/pages/register_page.dart';
import 'package:mobile_developer_test/vista/routes/route.dart';

Future<void> sendRegister(BuildContext context) async {
  final control = registerProvider.read;
  final isValidate = control.formK.currentState!.validate();
  if (isValidate) {
    ProgressDialog.show(context);
    final reposnse = await control.sumbit();
    Navigator.pop(context);
    if (reposnse.error != null) {
      Dialogs.alert(context, title: "Error", description: reposnse.error);
    } else {
      Navigator.pushReplacementNamed(context, RoutesPages.tabBar);
    }
  } else {
    Dialogs.alert(context, title: "Error", description: "Campos Invalidos");
  }
}
