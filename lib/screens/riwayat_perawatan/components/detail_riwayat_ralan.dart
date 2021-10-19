import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:EPASIEN/screens/riwayat_perawatan/controller/controllerriwayatralan.dart';
import 'package:EPASIEN/size_config.dart';
import 'package:get/get.dart';

class DetailRiwayatRalan extends StatefulWidget {
  DetailRiwayatRalan({Key key}) : super(key: key);
  @override
  _DetailRiwayatRalanState createState() => new _DetailRiwayatRalanState();
}

class _DetailRiwayatRalanState extends State<DetailRiwayatRalan> {
  final controllerriwayat = Get.put(ControllerRiwayat());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Obx(() {
                if (controllerriwayat.listriwayat.length != 0) {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: controllerriwayat.listriwayat.length,
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
                                              "No Rawat = ${controllerriwayat.listriwayat.value[index].noRawat}",
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
                                              "Dokter: ${controllerriwayat.listriwayat.value[index].nmDokter}",
                                          style: TextStyle(fontSize: 20)),
                                    ),
                                  ],
                                ),
                                // SizedBox(
                                //   height: (5),
                                // ),
                                Row(
                                  children: [
                                    Text.rich(TextSpan(
                                        text:
                                            "Poli: ${controllerriwayat.listriwayat.value[index].nmPoli}",
                                        style: TextStyle(fontSize: 20))),
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
              })
            ],
          ),
        ),
      ),
    );
  }
}
