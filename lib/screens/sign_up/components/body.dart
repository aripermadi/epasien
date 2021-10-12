import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/constants.dart';
import 'package:flutter_kepegawaian/size_config.dart';
import 'package:get/get.dart';

import 'sign_up_form.dart';

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
                FlatButton(
                  onPressed: () {
                    Get.toNamed('/booking');
                  },
                  color: kPrimaryColor,
                  child: Text('Cek Booking'),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                Text("Buat Janji/BOOKING", style: headingStyle),
                Text(
                  "Silahkan Lengkapi \nData Anda",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                SignUpForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
