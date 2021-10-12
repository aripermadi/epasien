import 'package:flutter_kepegawaian/config.dart';
import 'package:flutter_kepegawaian/screens/home/models.dart';
import 'package:flutter_kepegawaian/screens/home/models/pengumuman.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class UserProvider {
  Future<Login> login(String action, String rkm, String ktp) async {
    var res = await http.post(BaseUrl().baseURL,
        body: {'action': action, 'no_rkm_medis': rkm, 'no_ktp': ktp},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        encoding: Encoding.getByName("utf-8"));
    return loginFromJson(res.body);
  }
}

class GetPengumuman {
  Future<List<Pengumuman>> pengumuman() async {
    var res = await http.post(BaseUrl().baseURL,
        body: {'action': "pengumuman"},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        encoding: Encoding.getByName("utf-8"));
    return pengumumanFromJson(res.body);
  }
}
