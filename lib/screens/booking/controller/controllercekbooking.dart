import 'package:flutter/material.dart';
import 'package:EPASIEN/screens/booking/controller/connect.dart';
import 'package:EPASIEN/screens/booking/controller/models.dart';
import 'package:EPASIEN/screens/sign_up/controller/connect.dart';
import 'package:EPASIEN/screens/sign_up/controller/model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ControllerCekBooking extends GetxController {
  final box = GetStorage();
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
      box.write('no_booking', nobooking.text);
      hasilCekBooking.value = res;
      print(nobooking);
      Get.back();
    } catch (e) {
      print(e);
      Get.back();
    }
  }
}
