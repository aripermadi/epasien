import 'package:EPASIEN/config.dart';
import 'package:EPASIEN/screens/jadwal_dokter/controller/model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class DokterProvider {
  Future<List<Dokter>> dokter(
    String action,
    String tanggal,
  ) async {
    var res = await http.post(BaseUrl().baseURL,
        body: {'action': 'dokter', 'tanggal': tanggal},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        encoding: Encoding.getByName("utf-8"));
    return dokterFromJson(res.body);
  }
}
