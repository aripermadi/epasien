import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/Ketersediaan_TT/controller/connect.dart';
import 'package:flutter_kepegawaian/screens/Ketersediaan_TT/model/models.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class KamarController extends GetxController {
  var listKamar = List<Kamar>().obs;

  void onInit() async {
    await kamar();
    super.onInit();
  }

  Future kamar() async {
    try {
      Future.delayed(
        Duration.zero,
        () => Get.dialog(
            Center(
              child: CircularProgressIndicator(),
            ),
            barrierDismissible: true),
      );
      var data = await KamarProvider().kamar('kamar');
      listKamar.value = data;

      print(jsonEncode(data));
      //kamar.value = res;
      Get.back();
    } catch (e) {
      print(e);
      Get.back();
    }
  }
}
