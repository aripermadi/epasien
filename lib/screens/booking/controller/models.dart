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

// To parse this JSON data, do
//
//     final cekBookingsukses = cekBookingsuksesFromJson(jsonString);

CekBookingsukses cekBookingsuksesFromJson(String str) =>
    CekBookingsukses.fromJson(json.decode(str));

String cekBookingsuksesToJson(CekBookingsukses data) =>
    json.encode(data.toJson());

class CekBookingsukses {
  CekBookingsukses({
    this.tanggalBooking,
    this.jamBooking,
    this.noRkmMedis,
    this.nama,
    this.alamat,
    this.noTelp,
    this.email,
    this.tanggalPeriksa,
    this.nmDokter,
    this.nmPoli,
    this.noReg,
    this.pass,
  });

  DateTime tanggalBooking;
  String jamBooking;
  String noRkmMedis;
  String nama;
  String alamat;
  String noTelp;
  String email;
  DateTime tanggalPeriksa;
  String nmDokter;
  String nmPoli;
  String noReg;
  String pass;

  factory CekBookingsukses.fromJson(Map<String, dynamic> json) =>
      CekBookingsukses(
        tanggalBooking: DateTime.parse(json["tanggal_booking"]),
        jamBooking: json["jam_booking"],
        noRkmMedis: json["no_rkm_medis"],
        nama: json["nama"],
        alamat: json["alamat"],
        noTelp: json["no_telp"],
        email: json["email"],
        tanggalPeriksa: DateTime.parse(json["tanggal_periksa"]),
        nmDokter: json["nm_dokter"],
        nmPoli: json["nm_poli"],
        noReg: json["no_reg"],
        pass: json["pass"],
      );

  Map<String, dynamic> toJson() => {
        "tanggal_booking":
            "${tanggalBooking.year.toString().padLeft(4, '0')}-${tanggalBooking.month.toString().padLeft(2, '0')}-${tanggalBooking.day.toString().padLeft(2, '0')}",
        "jam_booking": jamBooking,
        "no_rkm_medis": noRkmMedis,
        "nama": nama,
        "alamat": alamat,
        "no_telp": noTelp,
        "email": email,
        "tanggal_periksa":
            "${tanggalPeriksa.year.toString().padLeft(4, '0')}-${tanggalPeriksa.month.toString().padLeft(2, '0')}-${tanggalPeriksa.day.toString().padLeft(2, '0')}",
        "nm_dokter": nmDokter,
        "nm_poli": nmPoli,
        "no_reg": noReg,
        "pass": pass,
      };
}
