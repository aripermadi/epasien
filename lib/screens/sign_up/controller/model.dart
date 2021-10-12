// To parse this JSON data, do
//
//     final poliklinik = poliklinikFromJson(jsonString);

import 'dart:convert';

List<Poliklinik> poliklinikFromJson(String str) =>
    List<Poliklinik>.from(json.decode(str).map((x) => Poliklinik.fromJson(x)));

String poliklinikToJson(List<Poliklinik> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Poliklinik {
  Poliklinik({
    this.the0,
    this.the1,
    this.kdPoli,
    this.nmPoli,
  });

  String the0;
  String the1;
  String kdPoli;
  String nmPoli;

  factory Poliklinik.fromJson(Map<String, dynamic> json) => Poliklinik(
        the0: json["0"],
        the1: json["1"],
        kdPoli: json["kd_poli"],
        nmPoli: json["nm_poli"],
      );

  Map<String, dynamic> toJson() => {
        "0": the0,
        "1": the1,
        "kd_poli": kdPoli,
        "nm_poli": nmPoli,
      };
}

// To parse this JSON data, do
//
//     final bookingPeriksa = bookingPeriksaFromJson(jsonString);

BookingPeriksa bookingPeriksaFromJson(String str) =>
    BookingPeriksa.fromJson(json.decode(str));

String bookingPeriksaToJson(BookingPeriksa data) => json.encode(data.toJson());

class BookingPeriksa {
  BookingPeriksa({
    this.state,
    this.message,
  });

  String state;
  String message;

  factory BookingPeriksa.fromJson(Map<String, dynamic> json) => BookingPeriksa(
        state: json["state"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "state": state,
        "message": message,
      };
}
