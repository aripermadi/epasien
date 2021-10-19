import 'package:flutter/material.dart';
import 'package:EPASIEN/screens/home/components/section_title.dart';
import 'package:EPASIEN/screens/jadwal_dokter/controller/controller.dart';
import 'package:get/get.dart';

class ListDokter extends StatefulWidget {
  ListDokter({Key key}) : super(key: key);
  @override
  _ListDokterState createState() => new _ListDokterState();
}

class _ListDokterState extends State<ListDokter> {
  final dokterController = Get.put(DokterController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SectionTitle(title: "Jadwal Dokter Hari Ini", press: () {}),
          SizedBox(
            height: (20),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: dokterController.listdokter.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Card(
                        elevation: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ListTile(
                              title: Text.rich(
                                TextSpan(
                                    text:
                                        "${dokterController.listdokter.value[index].nmPoli}",
                                    style: TextStyle(fontSize: 20)),
                              ),
                              subtitle: Text.rich(
                                TextSpan(
                                    text:
                                        "Nama: ${dokterController.listdokter.value[index].nmDokter}\nJam Praktek:${dokterController.listdokter.value[index].jamMulai} ",
                                    style: TextStyle(fontSize: 20)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ]),
          ),
        ],
      ),
      margin: EdgeInsets.all(10),
      width: double.infinity,
      //height: getProportionateScreenHeight(150),
    );
  }
}
