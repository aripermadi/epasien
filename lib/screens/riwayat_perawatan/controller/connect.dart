import 'package:flutter_kepegawaian/config.dart';
import 'package:flutter_kepegawaian/screens/riwayat_perawatan/models/riwayat.dart';
import 'package:flutter_kepegawaian/screens/riwayat_perawatan/models/riwayatdetail.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class RiwayatRalan {
  Future<List<Riwayat>> riwayat(
    String action,
    String no_rkm_medis,
  ) async {
    var res = await http.post(BaseUrl().baseURL,
        body: {'action': 'riwayat', 'no_rkm_medis': no_rkm_medis},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        encoding: Encoding.getByName("utf-8"));
    return riwayatFromJson(res.body);
  }
}

class RiwayatDetailRalan {
  Future<List<RiwayatDetail>> riwayatdetail(
    String action,
    String no_rkm_medis,
    String no_reg,
    String tgl_registrasi,
  ) async {
    var res = await http.post(BaseUrl().baseURL,
        body: {
          'action': 'riwayatdetail',
          'tanggal': tgl_registrasi,
          'no_reg': no_reg,
          'no_rkm_medis': no_rkm_medis
        },
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        encoding: Encoding.getByName("utf-8"));
    return riwayatDetailFromJson(res.body);
  }
}
