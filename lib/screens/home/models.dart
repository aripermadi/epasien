// To parse this JSON data, do
//
//     final login = loginFromJson(jsonString);

import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
  Login({
    this.state,
    this.noRkmMedis,
  });

  String state;
  String noRkmMedis;

  factory Login.fromJson(Map<String, dynamic> json) => Login(
        state: json["state"],
        noRkmMedis: json["no_rkm_medis"],
      );

  Map<String, dynamic> toJson() => {
        "state": state,
        "no_rkm_medis": noRkmMedis,
      };
}
