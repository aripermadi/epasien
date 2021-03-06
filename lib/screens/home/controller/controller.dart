import 'package:flutter/material.dart';
import 'package:EPASIEN/screens/fasilitas/models/radiologi.dart';
import 'package:EPASIEN/screens/home/controller/connect.dart';
import 'package:EPASIEN/screens/home/models/pengumuman.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  final box = GetStorage();
  TextEditingController rkm;
  TextEditingController ktp;
  var hasil = ''.obs;

  var listRad = List<Radiologi>().obs;
  var listPengumuman = List<Pengumuman>().obs;

  void onInit() async {
    rkm = TextEditingController();
    ktp = TextEditingController();

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

      print(res);
      box.write('rkm', data.noRkmMedis);
      hasil.value = res;
      Get.back();
    } catch (e) {
      print(e);
      Get.back();
    }
  }
}
