import 'package:flutter/material.dart';
import 'package:EPASIEN/components/default_button.dart';
import 'package:EPASIEN/size_config.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(width: 5, color: Colors.orangeAccent)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text.rich(
                  TextSpan(
                      text: "No. Booking :", style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
            SizedBox(
              height: (5),
            ),
            Row(
              children: [
                Text.rich(
                  TextSpan(
                      text: "Tgl. Booking:", style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
            SizedBox(
              height: (5),
            ),
            Row(
              children: [
                Text.rich(
                  TextSpan(
                      text: "Tgl. Periksa:", style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
            SizedBox(
              height: (5),
            ),
            Row(
              children: [
                Text.rich(
                    TextSpan(text: "Nama:", style: TextStyle(fontSize: 20))),
              ],
            ),
            Row(
              children: [
                Text.rich(
                    TextSpan(text: "No. HP:", style: TextStyle(fontSize: 20))),
              ],
            ),
            Row(
              children: [
                Text.rich(
                    TextSpan(text: "Email:", style: TextStyle(fontSize: 20))),
              ],
            ),
            Row(
              children: [
                Text.rich(
                    TextSpan(text: "Alamat:", style: TextStyle(fontSize: 20))),
              ],
            ),
            Row(
              children: [
                Text.rich(TextSpan(
                    text: "Poliklinik:", style: TextStyle(fontSize: 20))),
              ],
            ),
            /*SizedBox(height: SizeConfig.screenHeight * 0.04),
            Image.asset(
              "assets/images/success.png",
              height: SizeConfig.screenHeight * 0.4, //40%
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.08),
            Text(
              "Login Success",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(30),
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),*/
            Spacer(),
            SizedBox(
              width: SizeConfig.screenWidth * 0.6,
              child: DefaultButton(
                text: "Back to home",
                press: () {
                  Get.toNamed('/home');
                  //Navigator.pushNamed(context, HomeScreen.routeName);
                },
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
