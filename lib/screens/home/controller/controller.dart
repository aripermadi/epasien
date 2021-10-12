import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/fasilitas/models/radiologi.dart';
import 'package:flutter_kepegawaian/screens/home/controller/connect.dart';
import 'package:flutter_kepegawaian/screens/home/models/pengumuman.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController rkm;
  TextEditingController ktp;
  var hasil = ''.obs;

  var listRad = List<Radiologi>().obs;
  var listPengumuman = List<Pengumuman>().obs;

  void onInit() async {
    rkm = TextEditingController();
    ktp = TextEditingController();
    await pengumuman();
    super.onInit();
  }

  Future login() async {
    try {
      Future.delayed(
        Duration.zero,
        () => Get.dialog(
            Center(
              child: CircularProgressIndicator(),
            ),
            barrierDismissible: true),
      );
      hasil.value = '';
      var data = await UserProvider().login('signin', rkm.text, ktp.text);
      var res = data.state;
      // print(res.state);
      print(res);
      hasil.value = res;
      Get.back();
    } catch (e) {
      print(e);
      Get.back();
    }
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

      Get.back();
    } catch (e) {
      print(e);
      Get.back();
    }
  }
}
