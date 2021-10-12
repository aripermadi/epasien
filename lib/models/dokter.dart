// To parse this JSON data, do
//
//     final dokter = dokterFromJson(jsonString);

import 'dart:convert';

List<Dokter> dokterFromJson(String str) =>
    List<Dokter>.from(json.decode(str).map((x) => Dokter.fromJson(x)));

String dokterToJson(List<Dokter> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Dokter {
  Dokter({
    this.nmDokter,
    this.jk,
    this.nmPoli,
    this.jamMulai,
    this.jamSelesai,
    this.kdDokter,
  });

  String nmDokter;
  Jk jk;
  String nmPoli;
  Jam jamMulai;
  Jam jamSelesai;
  String kdDokter;

  factory Dokter.fromJson(Map<String, dynamic> json) => Dokter(
        nmDokter: json["nm_dokter"],
        jk: jkValues.map[json["jk"]],
        nmPoli: json["nm_poli"],
        jamMulai: jamValues.map[json["jam_mulai"]],
        jamSelesai: jamValues.map[json["jam_selesai"]],
        kdDokter: json["kd_dokter"],
      );

  Map<String, dynamic> toJson() => {
        "nm_dokter": nmDokter,
        "jk": jkValues.reverse[jk],
        "nm_poli": nmPoli,
        "jam_mulai": jamValues.reverse[jamMulai],
        "jam_selesai": jamValues.reverse[jamSelesai],
        "kd_dokter": kdDokter,
      };
}

enum Jam { THE_0000 }

final jamValues = EnumValues({"00:00": Jam.THE_0000});

enum Jk { P, L }

final jkValues = EnumValues({"L": Jk.L, "P": Jk.P});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
