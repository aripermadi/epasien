import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/fasilitas/controller/connect.dart';
import 'package:flutter_kepegawaian/screens/fasilitas/models/radiologi.dart';
import 'package:get/get.dart';

class ControllerRad extends GetxController {
  var listRad = List<Radiologi>().obs;

  // var listOperasi = List<Operas>().obs;

  void onInit() async {
    await rad();
    super.onInit();
  }

  Future rad() async {
    try {
      Future.delayed(
        Duration.zero,
        () => Get.dialog(
            Center(
              child: CircularProgressIndicator(),
            ),
            barrierDismissible: true),
      );
      var data = await GetRad().radiologi();
      listRad.value = data;

      Get.back();
    } catch (e) {
      print(e);
      Get.back();
    }
  }
}
