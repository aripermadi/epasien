// import 'package:flutter/material.dart';
// import 'package:flutter_kepegawaian/screens/booking/controller/connect.dart';
// import 'package:flutter_kepegawaian/screens/booking/controller/models.dart';
// import 'package:flutter_kepegawaian/screens/riwayat_perawatan/controller/connect.dart';
// import 'package:flutter_kepegawaian/screens/riwayat_perawatan/models/riwayat.dart';
// import 'package:flutter_kepegawaian/screens/sign_up/controller/connect.dart';
// import 'package:flutter_kepegawaian/screens/sign_up/controller/model.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:http/http.dart';

// class ControllerRiwayatRanap extends GetxController {
//   final box = GetStorage();
//   final listriwayat = List<Riwayat>().obs;

//   void onInit() async {
//     await cekriwayatranap();
//     super.onInit();
//   }

//   Future cekriwayatranap() async {
//     try {
//       Future.delayed(
//         Duration.zero,
//         () => Get.dialog(
//             Center(
//               child: CircularProgressIndicator(),
//             ),
//             barrierDismissible: true),
//       );
//       final norm = box.read('rkm');
//       var data = await GetRiwayatRanap().riwayatranap(
//         'riwayat',
//         norm,
//       );
//       //box.write('tglregistrasi', data.obs);
//       var res = data.obs;
//       print(data);
//       Get.back();
//     } catch (e) {
//       print(e);
//       Get.back();
//     }
//   }
// }

// class ControllerDetailRiwayat extends GetxController {
//   final box = GetStorage();
//   final norm = ReadWriteValue('rkm', '');

//   void onInit() async {
//     await cekriwayat();
//     super.onInit();
//   }

//   Future cekriwayat() async {
//     try {
//       Future.delayed(
//         Duration.zero,
//         () => Get.dialog(
//             Center(
//               child: CircularProgressIndicator(),
//             ),
//             barrierDismissible: true),
//       );

//       var data = await GetRiwayatRalan().riwayatralan(
//         'cekbooking',
//         norm.defaultValue,
//       );
//       var res = data.obs;
//       print(norm);
//       Get.back();
//     } catch (e) {
//       print(e);
//       Get.back();
//     }
//   }
// }
