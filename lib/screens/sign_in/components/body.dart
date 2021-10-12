import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/components/no_account_text.dart';
import '../../../size_config.dart';
import 'sign_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Login Pasien",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.01),

                /*Text(
                  "Jika anda pasien lama atau pernah berobat sebelumnya, untuk nomor rekam medis dan password login bisa Anda tanyakan kepada petugas Kami saat Anda melakukan registrasi secara offline. Dan password bisa Anda ubah setelah login di aplikasi EPasien. ",
                  textAlign: TextAlign.center,
                ),*/
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),

                SizedBox(height: getProportionateScreenHeight(20)),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
