// To parse this JSON data, do
//
//     final cekBookingRegistrasi = cekBookingRegistrasiFromJson(jsonString);

import 'dart:convert';

CekBookingRegistrasi cekBookingRegistrasiFromJson(String str) =>
    CekBookingRegistrasi.fromJson(json.decode(str));

String cekBookingRegistrasiToJson(CekBookingRegistrasi data) =>
    json.encode(data.toJson());

class CekBookingRegistrasi {
  CekBookingRegistrasi({
    this.state,
  });

  String state;

  factory CekBookingRegistrasi.fromJson(Map<String, dynamic> json) =>
      CekBookingRegistrasi(
        state: json["state"],
      );

  Map<String, dynamic> toJson() => {
        "state": state,
      };
}
