import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/constants.dart';
import 'package:get/get.dart';

import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showAlertDialog(context);
      },
      child: Container(
        // height: 90,
        width: double.infinity,
        margin: EdgeInsets.all(getProportionateScreenWidth(20)),
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(15),
        ),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text.rich(
          TextSpan(
            style: TextStyle(color: Colors.white),
            children: [
              TextSpan(text: "Buat Janji/BOOKING\n"),
              TextSpan(
                text: "PENDAFTARAN",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(24),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget loginButton = FlatButton(
      child: Text("login"),
      onPressed: () => Get.offNamed('/login'),
    );
    Widget bookingButton = FlatButton(
      child: Text("booking"),
      onPressed: () => Get.offNamed('/daftar'),
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Informasi"),
      content: Text(
          "Jika anda pasien lama atau pernah berobat sebelumnya, untuk nomor rekam medis dan password login bisa Anda tanyakan kepada petugas Kami saat Anda melakukan registrasi secara offline. Dan password bisa Anda ubah setelah login di aplikasi EPasien. Jika Anda pasien baru dan belum pernah periksa sebelumnya, silahkan melakukan booking atau buat janji melalui menu utama EPasien ini. Setelah admin kami melakukan verifikasi data, Anda akan mendapat password login dan antrian periksa sesuai booking Anda."),
      actions: [
        loginButton,
        bookingButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
