import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/booking/controller/connect.dart';
import 'package:flutter_kepegawaian/screens/booking/controller/models.dart';
import 'package:flutter_kepegawaian/screens/sign_up/controller/connect.dart';
import 'package:flutter_kepegawaian/screens/sign_up/controller/model.dart';
import 'package:get/get.dart';

class ControllerCekBooking extends GetxController {
  TextEditingController nobooking;
  TextEditingController nohp;

  var hasilCekBooking = ''.obs;
  void onInit() async {
    nobooking = TextEditingController();
    nohp = TextEditingController();
    super.onInit();
  }

  Future cekbookingperiksa() async {
    try {
      Future.delayed(
        Duration.zero,
        () => Get.dialog(
            Center(
              child: CircularProgressIndicator(),
            ),
            barrierDismissible: true),
      );
      hasilCekBooking.value = '';
      var data = await GetCekBooking().cekbooking(
        'cekbooking',
        nobooking.text,
        nohp.text,
      );
      var res = data.state;
      hasilCekBooking.value = res;
      print(nobooking);
      Get.back();
    } catch (e) {
      print(e);
      Get.back();
    }
  }
}
