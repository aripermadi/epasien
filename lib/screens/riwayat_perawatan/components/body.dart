import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/riwayat_perawatan/components/detail_riwayat_ralan.dart';
import 'package:flutter_kepegawaian/screens/riwayat_perawatan/components/detail_riwayat_ranap.dart';

class Body extends StatelessWidget {
  TabController tabController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TabBar(
                labelColor: Colors.black,
                indicator: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                tabs: [
                  Tab(
                    text: "Ralan",
                  ),
                  Tab(
                    text: "Ranap",
                  )
                ],
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            DetailRiwayatRalan(),
            DetailRiwayatRanap(),
          ],
        ),
      ),
    );
  }
}
