// To parse this JSON data, do
//
//     final riwayat = riwayatFromJson(jsonString);

import 'dart:convert';

List<Riwayat> riwayatFromJson(String str) =>
    List<Riwayat>.from(json.decode(str).map((x) => Riwayat.fromJson(x)));

String riwayatToJson(List<Riwayat> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Riwayat {
  Riwayat({
    this.the0,
    this.the1,
    this.the2,
    this.the3,
    this.the4,
    this.the5,
    this.tglRegistrasi,
    this.noRawat,
    this.noReg,
    this.nmPoli,
    this.nmDokter,
    this.pngJawab,
  });

  DateTime the0;
  String the1;
  String the2;
  String the3;
  String the4;
  String the5;
  DateTime tglRegistrasi;
  String noRawat;
  String noReg;
  String nmPoli;
  String nmDokter;
  String pngJawab;

  factory Riwayat.fromJson(Map<String, dynamic> json) => Riwayat(
        the0: DateTime.parse(json["0"]),
        the1: json["1"],
        the2: json["2"],
        the3: json["3"],
        the4: json["4"],
        the5: json["5"],
        tglRegistrasi: DateTime.parse(json["tgl_registrasi"]),
        noRawat: json["no_rawat"],
        noReg: json["no_reg"],
        nmPoli: json["nm_poli"],
        nmDokter: json["nm_dokter"],
        pngJawab: json["png_jawab"],
      );

  Map<String, dynamic> toJson() => {
        "0":
            "${the0.year.toString().padLeft(4, '0')}-${the0.month.toString().padLeft(2, '0')}-${the0.day.toString().padLeft(2, '0')}",
        "1": the1,
        "2": the2,
        "3": the3,
        "4": the4,
        "5": the5,
        "tgl_registrasi":
            "${tglRegistrasi.year.toString().padLeft(4, '0')}-${tglRegistrasi.month.toString().padLeft(2, '0')}-${tglRegistrasi.day.toString().padLeft(2, '0')}",
        "no_rawat": noRawat,
        "no_reg": noReg,
        "nm_poli": nmPoli,
        "nm_dokter": nmDokter,
        "png_jawab": pngJawab,
      };
}
