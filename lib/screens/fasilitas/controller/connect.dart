import 'dart:convert';

import 'package:flutter_kepegawaian/screens/fasilitas/models/operasi.dart';
import 'package:flutter_kepegawaian/screens/fasilitas/models/radiologi.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_kepegawaian/config.dart';
import 'package:flutter_kepegawaian/screens/fasilitas/models/laborat.dart';

class Laborat {
  Future<List<Laboratorium>> laborat() async {
    var res = await http.post(BaseUrl().baseURL,
        body: {'action': 'laboratorium'},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        encoding: Encoding.getByName("utf-8"));
    return laboratoriumFromJson(res.body);
  }
}

class GetRad {
  Future<List<Radiologi>> radiologi() async {
    var res = await http.post(BaseUrl().baseURL,
        body: {'action': "radiologi"},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        encoding: Encoding.getByName("utf-8"));
    return radiologiFromJson(res.body);
  }
}

class GetOperasi {
  Future<List<Operasi>> operasi() async {
    var res = await http.post(BaseUrl().baseURL,
        body: {'action': "operasi"},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        encoding: Encoding.getByName("utf-8"));
    return operasiFromJson(res.body);
  }
}
