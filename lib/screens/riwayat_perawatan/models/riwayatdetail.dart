// To parse this JSON data, do
//
//     final riwayatDetail = riwayatDetailFromJson(jsonString);

import 'dart:convert';

List<RiwayatDetail> riwayatDetailFromJson(String str) =>
    List<RiwayatDetail>.from(
        json.decode(str).map((x) => RiwayatDetail.fromJson(x)));

String riwayatDetailToJson(List<RiwayatDetail> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RiwayatDetail {
  RiwayatDetail({
    this.the0,
    this.the1,
    this.the2,
    this.the3,
    this.the4,
    this.the5,
    this.the6,
    this.the7,
    this.the8,
    this.the9,
    this.tglRegistrasi,
    this.noRawat,
    this.noReg,
    this.nmPoli,
    this.nmDokter,
    this.pngJawab,
    this.keluhan,
    this.pemeriksaan,
    this.nmPenyakit,
    this.namaBrng,
  });

  DateTime the0;
  String the1;
  String the2;
  String the3;
  String the4;
  String the5;
  dynamic the6;
  dynamic the7;
  dynamic the8;
  dynamic the9;
  DateTime tglRegistrasi;
  String noRawat;
  String noReg;
  String nmPoli;
  String nmDokter;
  String pngJawab;
  dynamic keluhan;
  dynamic pemeriksaan;
  dynamic nmPenyakit;
  dynamic namaBrng;

  factory RiwayatDetail.fromJson(Map<String, dynamic> json) => RiwayatDetail(
        the0: DateTime.parse(json["0"]),
        the1: json["1"],
        the2: json["2"],
        the3: json["3"],
        the4: json["4"],
        the5: json["5"],
        the6: json["6"],
        the7: json["7"],
        the8: json["8"],
        the9: json["9"],
        tglRegistrasi: DateTime.parse(json["tgl_registrasi"]),
        noRawat: json["no_rawat"],
        noReg: json["no_reg"],
        nmPoli: json["nm_poli"],
        nmDokter: json["nm_dokter"],
        pngJawab: json["png_jawab"],
        keluhan: json["keluhan"],
        pemeriksaan: json["pemeriksaan"],
        nmPenyakit: json["nm_penyakit"],
        namaBrng: json["nama_brng"],
      );

  Map<String, dynamic> toJson() => {
        "0":
            "${the0.year.toString().padLeft(4, '0')}-${the0.month.toString().padLeft(2, '0')}-${the0.day.toString().padLeft(2, '0')}",
        "1": the1,
        "2": the2,
        "3": the3,
        "4": the4,
        "5": the5,
        "6": the6,
        "7": the7,
        "8": the8,
        "9": the9,
        "tgl_registrasi":
            "${tglRegistrasi.year.toString().padLeft(4, '0')}-${tglRegistrasi.month.toString().padLeft(2, '0')}-${tglRegistrasi.day.toString().padLeft(2, '0')}",
        "no_rawat": noRawat,
        "no_reg": noReg,
        "nm_poli": nmPoli,
        "nm_dokter": nmDokter,
        "png_jawab": pngJawab,
        "keluhan": keluhan,
        "pemeriksaan": pemeriksaan,
        "nm_penyakit": nmPenyakit,
        "nama_brng": namaBrng,
      };
}
