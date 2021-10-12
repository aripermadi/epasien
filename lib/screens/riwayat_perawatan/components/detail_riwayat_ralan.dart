import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/size_config.dart';

class DetailRiwayatRalan extends StatefulWidget {
  DetailRiwayatRalan({Key key}) : super(key: key);
  @override
  _DetailRiwayatRalanState createState() => new _DetailRiwayatRalanState();
}

class _DetailRiwayatRalanState extends State<DetailRiwayatRalan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        height: getProportionateScreenHeight(250),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Text("Data Kunjungan Ralan",
                      style: TextStyle(fontSize: 18))),
              SizedBox(
                height: (10),
              ),
              Card(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text.rich(
                              TextSpan(
                                  text: "No Rawat :",
                                  style: TextStyle(fontSize: 20)),
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
                                  text: "Nama:",
                                  style: TextStyle(fontSize: 20)),
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
                                  text: "Dokter:",
                                  style: TextStyle(fontSize: 16)),
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
                                  text: "Jam Praktek:",
                                  style: TextStyle(fontSize: 16)),
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
                                  text: "Status:",
                                  style: TextStyle(fontSize: 16)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
