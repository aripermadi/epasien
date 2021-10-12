import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/sign_up/controller/connect.dart';
import 'package:get/get.dart';

class BookingController extends GetxController {
  TextEditingController nama;
  TextEditingController alamat;
  TextEditingController nohp;
  TextEditingController email;
  TextEditingController pesan;
  TextEditingController tanggal;
  DropdownButtonFormField poli;

  var tgl = DateTime.now().obs;
  var poliSelected = ''.obs;
  var berhasil = ''.obs;

  void onInit() async {
    nama = TextEditingController();
    alamat = TextEditingController();
    nohp = TextEditingController();
    email = TextEditingController();
    pesan = TextEditingController();
    tanggal = TextEditingController();
    poli = DropdownButtonFormField(
      items: [],
      onChanged: (value) {},
    );

    super.onInit();
  }

  Future booking() async {
    print(poliSelected.value);
    try {
      Future.delayed(
        Duration.zero,
        () => Get.dialog(
            Center(
              child: CircularProgressIndicator(),
            ),
            barrierDismissible: true),
      );
      berhasil.value = '';
      var data = await GetBooking().booking(
          'booking_periksa',
          nama.text,
          alamat.text,
          nohp.text,
          email.text,
          pesan.text,
          DateFormat('yyyy-MM-dd').format(tgl.value),
          poliSelected.value);
      var res = data.state;
      print(res);
      // print(res.state);
      //print(res);
      berhasil.value = res;
      Get.back();
    } catch (e) {
      print(e.toString());
      Get.back();
    }
  }
}
