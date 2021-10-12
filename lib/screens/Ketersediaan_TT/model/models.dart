// To parse this JSON data, do
//
//     final kamar = kamarFromJson(jsonString);

import 'dart:convert';

List<Kamar> kamarFromJson(String str) => List<Kamar>.from(json.decode(str).map((x) => Kamar.fromJson(x)));

String kamarToJson(List<Kamar> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Kamar {
    Kamar({
        this.the0,
        this.the1,
        this.the2,
        this.the3,
        this.kelas,
        this.total,
        this.isi,
        this.kosong,
    });

    String the0;
    String the1;
    String the2;
    String the3;
    String kelas;
    String total;
    String isi;
    String kosong;

    factory Kamar.fromJson(Map<String, dynamic> json) => Kamar(
        the0: json["0"],
        the1: json["1"],
        the2: json["2"],
        the3: json["3"],
        kelas: json["kelas"],
        total: json["total"],
        isi: json["isi"],
        kosong: json["kosong"],
    );

    Map<String, dynamic> toJson() => {
        "0": the0,
        "1": the1,
        "2": the2,
        "3": the3,
        "kelas": kelas,
        "total": total,
        "isi": isi,
        "kosong": kosong,
    };
}
