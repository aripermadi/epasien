import 'package:flutter/material.dart';
import 'package:EPASIEN/screens/Ketersediaan_TT/controller/controller.dart';
import 'package:get/get.dart';

class ListKamar extends StatefulWidget {
  ListKamar({Key key}) : super(key: key);
  @override
  _ListKamarState createState() => new _ListKamarState();
}

class _ListKamarState extends State<ListKamar> {
  final kamarController = Get.put(KamarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        //height: getProportionateScreenHeight(200),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(children: <Widget>[
            Obx(() {
              if (kamarController.listKamar.length != 0) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: kamarController.listKamar.length,
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
                                            "${kamarController.listKamar.value[index].kelas}",
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
                                            "Terisi: ${kamarController.listKamar.value[index].isi}",
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
                                          "Kosong: ${kamarController.listKamar.value[index].kosong}",
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
          ]),
        ),
      ),
    );
  }
}
