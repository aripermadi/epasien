import 'package:EPASIEN/config.dart';
import 'package:EPASIEN/screens/Ketersediaan_TT/model/models.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class KamarProvider {
  Future<List<Kamar>> kamar(
    String action,
  ) async {
    var res = await http.post(BaseUrl().baseURL,
        body: {'action': 'kamar'},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        encoding: Encoding.getByName("utf-8"));
    return kamarFromJson(res.body);
  }
}
