import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:EPASIEN/screens/booking/controller/connect.dart';
import 'package:EPASIEN/screens/booking/controller/models.dart';
import 'package:EPASIEN/screens/riwayat_perawatan/controller/connect.dart';
import 'package:EPASIEN/screens/riwayat_perawatan/models/riwayat.dart';
import 'package:EPASIEN/screens/sign_up/controller/connect.dart';
import 'package:EPASIEN/screens/sign_up/controller/model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart';

class ControllerRiwayat extends GetxController {
  final box = GetStorage();
  final listriwayat = <Riwayat>[].obs;
  var hasilriwayatralan = ''.obs;
  void onInit() async {
    await cekriwayat();
    super.onInit();
  }

  Future cekriwayat() async {
    try {
      Future.delayed(
        Duration.zero,
        () => Get.dialog(
            Center(
              child: CircularProgressIndicator(),
            ),
            barrierDismissible: true),
      );
      final no_rkm_medis = box.read('rkm');
      hasilriwayatralan.value = '';
      var data = await GetRiwayatRalan().riwayatralan(
        'riwayat',
        no_rkm_medis,
      );
      listriwayat.value = data;
      print(jsonEncode(data));
      Get.back();
    } catch (e) {
      print(e);
      Get.back();
    }
  }
}

class ControllerDetailRiwayat extends GetxController {
  final box = GetStorage();

  void onInit() async {
    await cekriwayatdetail();
    super.onInit();
  }

  Future cekriwayatdetail() async {
    try {
      Future.delayed(
        Duration.zero,
        () => Get.dialog(
            Center(
              child: CircularProgressIndicator(),
            ),
            barrierDismissible: true),
      );

      final norm = box.read('rkm');
      var data = await GetRiwayatRalan().riwayatralan(
        'cekbooking',
        norm,
      );
      var res = data.obs;
      print(norm);
      Get.back();
    } catch (e) {
      print(e);
      Get.back();
    }
  }
}
