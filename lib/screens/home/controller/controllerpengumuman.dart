import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:EPASIEN/screens/fasilitas/models/radiologi.dart';
import 'package:EPASIEN/screens/home/controller/connect.dart';
import 'package:EPASIEN/screens/home/models/pengumuman.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ControllerPengumuman extends GetxController {
  final box = GetStorage();
  var listPengumuman = <Pengumuman>[].obs;

  void onInit() async {
    await pengumuman();
    super.onInit();
  }

  Future pengumuman() async {
    try {
      Future.delayed(
        Duration.zero,
        () => Get.dialog(
            Center(
              child: CircularProgressIndicator(),
            ),
            barrierDismissible: true),
      );
      var data = await GetPengumuman().pengumuman();
      listPengumuman.value = data;
      print(jsonEncode(data));
      Get.back();
    } catch (e) {
      print(e);
      Get.back();
    }
  }
}
