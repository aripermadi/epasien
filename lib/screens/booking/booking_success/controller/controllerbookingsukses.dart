import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:EPASIEN/screens/booking/controller/connect.dart';
import 'package:get/get.dart';

class ControllerBookingSukses extends GetxController {
  //final box = GetStorage();
  TextEditingController nobooking;
  TextEditingController nohp;

  var hasilCekBooking = ''.obs;
  void onInit() async {
    await cekbookingsukses();
    super.onInit();
  }

  Future cekbookingsukses() async {
    try {
      Future.delayed(
        Duration.zero,
        () => Get.dialog(
            Center(
              child: CircularProgressIndicator(),
            ),
            barrierDismissible: true),
      );
      var data = await GetBookingDiterima().cekbookingsukses(
        'cekbooking',
        nobooking.text,
        nohp.text,
      );
      var res = data;
      print(res);
      Get.back();
    } catch (e) {
      print(e);
      Get.back();
    }
  }
}
