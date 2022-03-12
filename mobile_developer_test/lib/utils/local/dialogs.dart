import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class Dialogs {
  static alert(
    BuildContext context, {
    required String title,
    required String? description,
  }) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(title),
        content: Text(description!),
        actions: [
          MaterialButton(
            onPressed: () {
              Navigator.pop(_);
            },
            child: const Text("Continuar"),
          )
        ],
      ),
    );
  }

  static int option(BuildContext context) {
    int value = 0;
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: const EdgeInsets.all(0),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      value = 1;
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1, color: Colors.blue),
                        ),
                      ),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text("Tomar una foto"),
                          ),
                          Icon(Icons.camera_alt),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1, color: Colors.redAccent),
                        ),
                      ),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text("Cancelar"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
    return value;
  }
}

abstract class ProgressDialog {
  static show(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (_) {
        return WillPopScope(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white.withOpacity(0.9),
            ),
            onWillPop: () async => false);
      },
    );
  }

  static dissmiss(BuildContext context) {
    Navigator.pop(context);
  }
}
