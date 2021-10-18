import 'package:flutter_kepegawaian/config.dart';
import 'package:flutter_kepegawaian/screens/riwayat_perawatan/models/riwayat.dart';
import 'package:flutter_kepegawaian/screens/riwayat_perawatan/models/riwayatdetail.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class GetRiwayatRalan {
  Future<List<Riwayat>> riwayatralan(
    String action,
    String no_rkm_medis,
  ) async {
    var res = await http.post(BaseUrl().baseURL,
        body: {'action': action, 'no_rkm_medis': no_rkm_medis},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        encoding: Encoding.getByName("utf-8"));
    return riwayatFromJson(res.body);
  }
}

class GetRiwayatDetailRalan {
  Future<List<RiwayatDetail>> riwayatralandetail(
    String action,
    String no_rkm_medis,
    String no_reg,
    String tgl_registrasi,
  ) async {
    var res = await http.post(BaseUrl().baseURL,
        body: {
          'action': action,
          'tanggal': tgl_registrasi,
          'no_reg': no_reg,
          'no_rkm_medis': no_rkm_medis
        },
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        encoding: Encoding.getByName("utf-8"));
    return riwayatDetailFromJson(res.body);
  }
}

// class GetRiwayatRanap {
//   Future<List<RiwayatRanap>> riwayatranap(
//     String action,
//     String norm,
//   ) async {
//     var res = await http.post(BaseUrl().baseURL,
//         body: {'action': action, 'no_rkm_medis': norm},
//         headers: {'Content-Type': 'application/x-www-form-urlencoded'},
//         encoding: Encoding.getByName("utf-8"));
//     return riwayatFromJson(res.body);
//   }
// }

// class GetRiwayatDetailRanap {
//   Future<List<RiwayatRanapDetail>> riwayatranapdetail(
//     String action,
//     String no_rkm_medis,
//     String no_reg,
//     String tgl_registrasi,
//   ) async {
//     var res = await http.post(BaseUrl().baseURL,
//         body: {
//           'action': action,
//           'tanggal': tgl_registrasi,
//           'no_reg': no_reg,
//           'no_rkm_medis': no_rkm_medis
//         },
//         headers: {'Content-Type': 'application/x-www-form-urlencoded'},
//         encoding: Encoding.getByName("utf-8"));
//     return riwayatDetailFromJson(res.body);
//   }
// }
