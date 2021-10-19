import 'package:flutter/material.dart';
import 'package:EPASIEN/screens/fasilitas/controller/connect.dart';
import 'package:EPASIEN/screens/fasilitas/models/operasi.dart';
import 'package:get/get.dart';

class OkController extends GetxController {
  var listOperasi = List<Operasi>().obs;

  // var listOperasi = List<Operas>().obs;

  void onInit() async {
    await opr();
    super.onInit();
  }

  Future opr() async {
    try {
      Future.delayed(
        Duration.zero,
        () => Get.dialog(
            Center(
              child: CircularProgressIndicator(),
            ),
            barrierDismissible: true),
      );
      var data = await GetOperasi().operasi();
      print(data);
      listOperasi.value = data;

      Get.back();
    } catch (e) {
      print(e);
      Get.back();
    }
  }
}
