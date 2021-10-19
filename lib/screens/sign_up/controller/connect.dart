import 'package:EPASIEN/config.dart';
import 'package:EPASIEN/screens/sign_up/controller/model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class GetPoli {
  Future<List<Poliklinik>> poliklinik() async {
    var res = await http.post(BaseUrl().baseURL,
        body: {'action': "poli"},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        encoding: Encoding.getByName("utf-8"));
    return poliklinikFromJson(res.body);
  }
}

class GetBooking {
  Future<BookingPeriksa> booking(
      String action,
      String nama,
      String alamat,
      String nohp,
      String email,
      String pesan,
      String tanggal,
      String poli) async {
    var res = await http.post(BaseUrl().baseURL,
        body: {
          'action': 'booking_periksa',
          'nama': nama,
          'alamat': alamat,
          'nohp': nohp,
          'email': email,
          'poli': poli,
          'tanggal': tanggal,
          'pesan': pesan
        },
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        encoding: Encoding.getByName("utf-8"));
    return bookingPeriksaFromJson(res.body);
  }
}
