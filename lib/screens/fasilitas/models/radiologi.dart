// To parse this JSON data, do
//
//     final radiologi = radiologiFromJson(jsonString);

import 'dart:convert';

List<Radiologi> radiologiFromJson(String str) =>
    List<Radiologi>.from(json.decode(str).map((x) => Radiologi.fromJson(x)));

String radiologiToJson(List<Radiologi> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Radiologi {
  Radiologi({
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
    this.the10,
    this.the11,
    this.the12,
    this.kdJenisPrw,
    this.nmPerawatan,
    this.bagianRs,
    this.bhp,
    this.tarifPerujuk,
    this.tarifTindakanDokter,
    this.tarifTindakanPetugas,
    this.kso,
    this.menejemen,
    this.totalByr,
    this.kdPj,
    this.status,
    this.kelas,
  });

  String the0;
  String the1;
  String the2;
  String the3;
  String the4;
  String the5;
  String the6;
  String the7;
  String the8;
  String the9;
  The10 the10;
  String the11;
  The12 the12;
  String kdJenisPrw;
  String nmPerawatan;
  String bagianRs;
  String bhp;
  String tarifPerujuk;
  String tarifTindakanDokter;
  String tarifTindakanPetugas;
  String kso;
  String menejemen;
  String totalByr;
  The10 kdPj;
  String status;
  The12 kelas;

  factory Radiologi.fromJson(Map<String, dynamic> json) => Radiologi(
        the0: json["0"],
        the1: json["1"],
        the2: json["2"],
        the3: json["3"],
        the4: json["4"],
        the5: json["5"],
        the6: json["6"],
        the7: json["7"],
        the8: json["8"],
        the9: json["9"],
        the10: the10Values.map[json["10"]],
        the11: json["11"],
        the12: the12Values.map[json["12"]],
        kdJenisPrw: json["kd_jenis_prw"],
        nmPerawatan: json["nm_perawatan"],
        bagianRs: json["bagian_rs"],
        bhp: json["bhp"],
        tarifPerujuk: json["tarif_perujuk"],
        tarifTindakanDokter: json["tarif_tindakan_dokter"],
        tarifTindakanPetugas: json["tarif_tindakan_petugas"],
        kso: json["kso"],
        menejemen: json["menejemen"],
        totalByr: json["total_byr"],
        kdPj: the10Values.map[json["kd_pj"]],
        status: json["status"],
        kelas: the12Values.map[json["kelas"]],
      );

  Map<String, dynamic> toJson() => {
        "0": the0,
        "1": the1,
        "2": the2,
        "3": the3,
        "4": the4,
        "5": the5,
        "6": the6,
        "7": the7,
        "8": the8,
        "9": the9,
        "10": the10Values.reverse[the10],
        "11": the11,
        "12": the12Values.reverse[the12],
        "kd_jenis_prw": kdJenisPrw,
        "nm_perawatan": nmPerawatan,
        "bagian_rs": bagianRs,
        "bhp": bhp,
        "tarif_perujuk": tarifPerujuk,
        "tarif_tindakan_dokter": tarifTindakanDokter,
        "tarif_tindakan_petugas": tarifTindakanPetugas,
        "kso": kso,
        "menejemen": menejemen,
        "total_byr": totalByr,
        "kd_pj": the10Values.reverse[kdPj],
        "status": status,
        "kelas": the12Values.reverse[kelas],
      };
}

enum The10 { BPJ, A09, A42, EMPTY, B1 }

final the10Values = EnumValues({
  "A09": The10.A09,
  "A42": The10.A42,
  "B1": The10.B1,
  "BPJ": The10.BPJ,
  "-": The10.EMPTY
});

enum The12 { KELAS_1, EMPTY }

final the12Values = EnumValues({"-": The12.EMPTY, "Kelas 1": The12.KELAS_1});

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
