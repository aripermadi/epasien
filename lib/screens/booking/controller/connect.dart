import 'package:flutter_kepegawaian/config.dart';
import 'package:flutter_kepegawaian/screens/booking/controller/models.dart';
import 'package:flutter_kepegawaian/screens/sign_up/controller/model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class GetCekBooking {
  Future<CekBookingRegistrasi> cekbooking(
      String action, String no_booking, String no_hp) async {
    var res = await http.post(BaseUrl().baseURL,
        body: {
          'action': action,
          'no_booking': no_booking,
          'no_hp': no_hp,
        },
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        encoding: Encoding.getByName("utf-8"));
    return cekBookingRegistrasiFromJson(res.body);
  }
}
