import 'dart:convert';

List<Operasi> operasiFromJson(String str) =>
    List<Operasi>.from(json.decode(str).map((x) => Operasi.fromJson(x)));

String operasiToJson(List<Operasi> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Operasi {
  String s0;
  String s1;
  String s2;
  String s3;
  String s4;
  String s5;
  String s6;
  String s7;
  String s8;
  String s9;
  String s10;
  String s11;
  String s12;
  String s13;
  String s14;
  String s15;
  String s16;
  String s17;
  String s18;
  String s19;
  String s20;
  String s21;
  String s22;
  String s23;
  String s24;
  String s25;
  String s26;
  String s27;
  String s28;
  String s29;
  String s30;
  String s31;
  String s32;
  String s33;
  String kodePaket;
  String nmPerawatan;
  String kategori;
  String operator1;
  String operator2;
  String operator3;
  String asistenOperator1;
  String asistenOperator2;
  String asistenOperator3;
  String instrumen;
  String dokterAnak;
  String perawaatResusitas;
  String dokterAnestesi;
  String asistenAnestesi;
  String asistenAnestesi2;
  String bidan;
  String bidan2;
  String bidan3;
  String perawatLuar;
  String sewaOk;
  String alat;
  String akomodasi;
  String bagianRs;
  String omloop;
  String omloop2;
  String omloop3;
  String omloop4;
  String omloop5;
  String sarpras;
  String dokterPjanak;
  String dokterUmum;
  String kdPj;
  String status;
  String kelas;

  Operasi(String body,
      {this.s0,
      this.s1,
      this.s2,
      this.s3,
      this.s4,
      this.s5,
      this.s6,
      this.s7,
      this.s8,
      this.s9,
      this.s10,
      this.s11,
      this.s12,
      this.s13,
      this.s14,
      this.s15,
      this.s16,
      this.s17,
      this.s18,
      this.s19,
      this.s20,
      this.s21,
      this.s22,
      this.s23,
      this.s24,
      this.s25,
      this.s26,
      this.s27,
      this.s28,
      this.s29,
      this.s30,
      this.s31,
      this.s32,
      this.s33,
      this.kodePaket,
      this.nmPerawatan,
      this.kategori,
      this.operator1,
      this.operator2,
      this.operator3,
      this.asistenOperator1,
      this.asistenOperator2,
      this.asistenOperator3,
      this.instrumen,
      this.dokterAnak,
      this.perawaatResusitas,
      this.dokterAnestesi,
      this.asistenAnestesi,
      this.asistenAnestesi2,
      this.bidan,
      this.bidan2,
      this.bidan3,
      this.perawatLuar,
      this.sewaOk,
      this.alat,
      this.akomodasi,
      this.bagianRs,
      this.omloop,
      this.omloop2,
      this.omloop3,
      this.omloop4,
      this.omloop5,
      this.sarpras,
      this.dokterPjanak,
      this.dokterUmum,
      this.kdPj,
      this.status,
      this.kelas});

  Operasi.fromJson(Map<String, dynamic> json) {
    s0 = json['0'];
    s1 = json['1'];
    s2 = json['2'];
    s3 = json['3'];
    s4 = json['4'];
    s5 = json['5'];
    s6 = json['6'];
    s7 = json['7'];
    s8 = json['8'];
    s9 = json['9'];
    s10 = json['10'];
    s11 = json['11'];
    s12 = json['12'];
    s13 = json['13'];
    s14 = json['14'];
    s15 = json['15'];
    s16 = json['16'];
    s17 = json['17'];
    s18 = json['18'];
    s19 = json['19'];
    s20 = json['20'];
    s21 = json['21'];
    s22 = json['22'];
    s23 = json['23'];
    s24 = json['24'];
    s25 = json['25'];
    s26 = json['26'];
    s27 = json['27'];
    s28 = json['28'];
    s29 = json['29'];
    s30 = json['30'];
    s31 = json['31'];
    s32 = json['32'];
    s33 = json['33'];
    kodePaket = json['kode_paket'];
    nmPerawatan = json['nm_perawatan'];
    kategori = json['kategori'];
    operator1 = json['operator1'];
    operator2 = json['operator2'];
    operator3 = json['operator3'];
    asistenOperator1 = json['asisten_operator1'];
    asistenOperator2 = json['asisten_operator2'];
    asistenOperator3 = json['asisten_operator3'];
    instrumen = json['instrumen'];
    dokterAnak = json['dokter_anak'];
    perawaatResusitas = json['perawaat_resusitas'];
    dokterAnestesi = json['dokter_anestesi'];
    asistenAnestesi = json['asisten_anestesi'];
    asistenAnestesi2 = json['asisten_anestesi2'];
    bidan = json['bidan'];
    bidan2 = json['bidan2'];
    bidan3 = json['bidan3'];
    perawatLuar = json['perawat_luar'];
    sewaOk = json['sewa_ok'];
    alat = json['alat'];
    akomodasi = json['akomodasi'];
    bagianRs = json['bagian_rs'];
    omloop = json['omloop'];
    omloop2 = json['omloop2'];
    omloop3 = json['omloop3'];
    omloop4 = json['omloop4'];
    omloop5 = json['omloop5'];
    sarpras = json['sarpras'];
    dokterPjanak = json['dokter_pjanak'];
    dokterUmum = json['dokter_umum'];
    kdPj = json['kd_pj'];
    status = json['status'];
    kelas = json['kelas'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['0'] = this.s0;
    data['1'] = this.s1;
    data['2'] = this.s2;
    data['3'] = this.s3;
    data['4'] = this.s4;
    data['5'] = this.s5;
    data['6'] = this.s6;
    data['7'] = this.s7;
    data['8'] = this.s8;
    data['9'] = this.s9;
    data['10'] = this.s10;
    data['11'] = this.s11;
    data['12'] = this.s12;
    data['13'] = this.s13;
    data['14'] = this.s14;
    data['15'] = this.s15;
    data['16'] = this.s16;
    data['17'] = this.s17;
    data['18'] = this.s18;
    data['19'] = this.s19;
    data['20'] = this.s20;
    data['21'] = this.s21;
    data['22'] = this.s22;
    data['23'] = this.s23;
    data['24'] = this.s24;
    data['25'] = this.s25;
    data['26'] = this.s26;
    data['27'] = this.s27;
    data['28'] = this.s28;
    data['29'] = this.s29;
    data['30'] = this.s30;
    data['31'] = this.s31;
    data['32'] = this.s32;
    data['33'] = this.s33;
    data['kode_paket'] = this.kodePaket;
    data['nm_perawatan'] = this.nmPerawatan;
    data['kategori'] = this.kategori;
    data['operator1'] = this.operator1;
    data['operator2'] = this.operator2;
    data['operator3'] = this.operator3;
    data['asisten_operator1'] = this.asistenOperator1;
    data['asisten_operator2'] = this.asistenOperator2;
    data['asisten_operator3'] = this.asistenOperator3;
    data['instrumen'] = this.instrumen;
    data['dokter_anak'] = this.dokterAnak;
    data['perawaat_resusitas'] = this.perawaatResusitas;
    data['dokter_anestesi'] = this.dokterAnestesi;
    data['asisten_anestesi'] = this.asistenAnestesi;
    data['asisten_anestesi2'] = this.asistenAnestesi2;
    data['bidan'] = this.bidan;
    data['bidan2'] = this.bidan2;
    data['bidan3'] = this.bidan3;
    data['perawat_luar'] = this.perawatLuar;
    data['sewa_ok'] = this.sewaOk;
    data['alat'] = this.alat;
    data['akomodasi'] = this.akomodasi;
    data['bagian_rs'] = this.bagianRs;
    data['omloop'] = this.omloop;
    data['omloop2'] = this.omloop2;
    data['omloop3'] = this.omloop3;
    data['omloop4'] = this.omloop4;
    data['omloop5'] = this.omloop5;
    data['sarpras'] = this.sarpras;
    data['dokter_pjanak'] = this.dokterPjanak;
    data['dokter_umum'] = this.dokterUmum;
    data['kd_pj'] = this.kdPj;
    data['status'] = this.status;
    data['kelas'] = this.kelas;
    return data;
  }
}
