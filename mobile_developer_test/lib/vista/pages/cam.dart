import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:mobile_developer_test/models/authetication.dart';
import 'package:mobile_developer_test/utils/local/dialogs.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile_developer_test/utils/local/responsive.dart';
import 'package:mobile_developer_test/vista/routes/route.dart';

class CamarePage extends StatefulWidget {
  const CamarePage({Key? key}) : super(key: key);

  @override
  State<CamarePage> createState() => _CamarePageState();
}

class _CamarePageState extends State<CamarePage> {
  File? imageFile;
  int selectionDialog = 0;
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    final Resposive respon = Resposive(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            "TOMAR FOTO",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w300,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(5),
          ),
          Row(
            children: [
              const Text(" Toma aquí una foto ->"),
              IconButton(
                onPressed: () {
                  selectionDialog = 1;

                  takePicture(selectionDialog);
                },
                icon: const Icon(Icons.camera_alt),
              ),
              SizedBox(width: respon.dPorcentaje(8)),
              TextButton(
                onPressed: () {
                  Get.find<Authentication>().singOut();
                  Navigator.pushReplacementNamed(context, RoutesPages.login);
                },
                child: const Text("Cerrar Sesión"),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          imageFile == null
              ? const Center(
                  child: Text("No hay foto"),
                )
              : Container(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Image.file(imageFile!),
                  ),
                ),
        ],
      ),
    );
  }

  Future takePicture(int selection) async {
    var pickedFile;

    if (selection == 1) {
      pickedFile = await picker.pickImage(source: ImageSource.camera);
    }

    setState(() {
      if (pickedFile != null) {
        imageFile = File(pickedFile.path);
      } else {
        print("No tomo foto");
      }
    });

    // Navigator.of(context).pop();
  }
}
/*
 TextButton(
            onPressed: () {
              Get.find<Authentication>().singOut();
              Navigator.pushReplacementNamed(context, RoutesPages.login);
            },
            child: const Text("Cerrar Sesión"),
          ),
*/