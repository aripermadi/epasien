import 'package:flutter/material.dart';
import 'package:EPASIEN/components/product_card.dart';
import 'package:EPASIEN/models/Product.dart';
import 'package:EPASIEN/screens/home/controller/controller.dart';
import 'package:EPASIEN/screens/home/controller/controllerpengumuman.dart';
import 'package:get/get.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class Pengumuman extends StatelessWidget {
  final controllerpengumuman = Get.put(ControllerPengumuman());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Pengumuman", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            child: Obx(() {
              if (controllerpengumuman.listPengumuman.length != 0) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: controllerpengumuman.listPengumuman.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              /*Row(
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                            // text: "Nama : ",
                                            style: TextStyle(fontSize: 20)),
                                      ),
                                    ],
                                  ),*/
                              // SizedBox(
                              //   height: (5),
                              // ),
                              Row(
                                children: [
                                  Text.rich(
                                    TextSpan(
                                        text:
                                            "${controllerpengumuman.listPengumuman.value[index].pengumuman}",
                                        style: TextStyle(fontSize: 20)),
                                  ),
                                ],
                              ),
                              // SizedBox(
                              //   height: (5),
                              // ),
                              Row(
                                children: [
                                  Text.rich(
                                    TextSpan(
                                        text:
                                            " ${controllerpengumuman.listPengumuman.value[index].tanggal}",
                                        style: TextStyle(fontSize: 20)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              } else {
                return Center(
                  child: Text('Loading'),
                );
              }
            }),
          ),
        )
      ],
    );
  }
}
