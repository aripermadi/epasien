// To parse this JSON data, do
//
//     final pengumuman = pengumumanFromJson(jsonString);

import 'dart:convert';

List<Pengumuman> pengumumanFromJson(String str) =>
    List<Pengumuman>.from(json.decode(str).map((x) => Pengumuman.fromJson(x)));

String pengumumanToJson(List<Pengumuman> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Pengumuman {
  Pengumuman({
    this.the0,
    this.the1,
    this.the2,
    this.nik,
    this.tanggal,
    this.pengumuman,
  });

  String the0;
  DateTime the1;
  String the2;
  String nik;
  DateTime tanggal;
  String pengumuman;

  factory Pengumuman.fromJson(Map<String, dynamic> json) => Pengumuman(
        the0: json["0"],
        the1: DateTime.parse(json["1"]),
        the2: json["2"],
        nik: json["nik"],
        tanggal: DateTime.parse(json["tanggal"]),
        pengumuman: json["pengumuman"],
      );

  Map<String, dynamic> toJson() => {
        "0": the0,
        "1": the1.toIso8601String(),
        "2": the2,
        "nik": nik,
        "tanggal": tanggal.toIso8601String(),
        "pengumuman": pengumuman,
      };
}
