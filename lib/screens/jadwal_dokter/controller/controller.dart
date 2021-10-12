import 'dart:convert';

import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/jadwal_dokter/controller/connect.dart';
import 'package:flutter_kepegawaian/screens/jadwal_dokter/controller/model.dart';
import 'package:get/get.dart';

class DokterController extends GetxController {
  var listdokter = List<Dokter>().obs;
  var tanggal = DateTime.now().obs;

  void onInit() async {
    await dokter();
    super.onInit();
  }

  Future dokter() async {
    try {
      Future.delayed(
        Duration.zero,
        () => Get.dialog(
            Center(
              child: CircularProgressIndicator(),
            ),
            barrierDismissible: true),
      );
      var tgl = DateFormat('yyyy-MM-dd').format(tanggal.value);

      var data = await DokterProvider().dokter('dokter', tgl);

      listdokter.value = data;

      print(jsonEncode(data));
      //kamar.value = res;
      Get.back();
    } catch (e) {
      print(e);
      Get.back();
    }
  }
}
