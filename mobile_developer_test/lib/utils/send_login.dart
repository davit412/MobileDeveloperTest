import 'package:flutter/cupertino.dart';
import 'package:mobile_developer_test/utils/local/dialogs.dart';
import 'package:mobile_developer_test/vista/pages/login_page.dart';
import 'package:mobile_developer_test/vista/routes/route.dart';

Future<void> sendLogin(BuildContext context) async {
  final controller = loginProvider.read;
  final isValidation = controller.formK.currentState!.validate();

  if (isValidation) {
    ProgressDialog.show(context);
    final reposne = await controller.sumbitLogin();
    Navigator.pop(context);
    if (reposne.error != null) {
      Dialogs.alert(context, title: "Error", description: reposne.error);
    } else {
      Navigator.pushReplacementNamed(context, RoutesPages.tabBar);
    }
  }
}
