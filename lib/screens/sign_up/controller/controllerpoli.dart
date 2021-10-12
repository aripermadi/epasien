import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/sign_up/controller/connect.dart';
import 'package:flutter_kepegawaian/screens/sign_up/controller/model.dart';
import 'package:get/get.dart';

class ControllerPoli extends GetxController {
  var listPoli = List<Poliklinik>().obs;

  // var listOperasi = List<Operas>().obs;

  void onInit() async {
    await poli();
    super.onInit();
  }

  Future poli() async {
    try {
      Future.delayed(
        Duration.zero,
        () => Get.dialog(
            Center(
              child: CircularProgressIndicator(),
            ),
            barrierDismissible: true),
      );
      var data = await GetPoli().poliklinik();
      listPoli.value = data;

      Get.back();
    } catch (e) {
      print(e);
      Get.back();
    }
  }
}
