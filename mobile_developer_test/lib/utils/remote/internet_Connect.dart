// ignore_for_file: file_names

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InternetConnect {
  Future<bool> internetConnectivity() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } on SocketException catch (_) {
      return false;
    }
    return false;
  }

  snackBarInternet() async {
    var connectInternet = await internetConnectivity();
    if (connectInternet == false) {
      Get.snackbar(
        "ADVERTENCIA",
        "Necesita de acceso internet para ver este contenido.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.white,
        colorText: Colors.red,
        icon: const Icon(Icons.warning_rounded),
      );
    }
  }
}
