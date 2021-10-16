import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/booking/controller/connect.dart';
import 'package:flutter_kepegawaian/screens/booking/controller/models.dart';
import 'package:flutter_kepegawaian/screens/sign_up/controller/connect.dart';
import 'package:flutter_kepegawaian/screens/sign_up/controller/model.dart';
import 'package:get/get.dart';

class ControllerCekBooking extends GetxController {
  var hasilCekBooking = ''.obs;
  TextEditingController no_booking;
  TextEditingController nohp;
  // var listOperasi = List<Operas>().obs;

  void onInit() async {
    no_booking = TextEditingController();
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
        no_booking.text,
        nohp.text,
      );
      var res = data.state;
      hasilCekBooking.value = res;
      print(res);
      Get.back();
    } catch (e) {
      print(e);
      Get.back();
    }
  }
}
