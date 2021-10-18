import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/jadwal_dokter/components/list_dokter.dart';

import '../../../size_config.dart';
import 'informasi.dart';
import 'pendaftaran.dart';
import 'home_header.dart';
import 'pengumuman.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(10)),
            HomeHeader(),
            DiscountBanner(),
            Categories(),
            //SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListDokter(),
            ),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
