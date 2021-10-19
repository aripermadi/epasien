import 'package:EPASIEN/routes/app_page.dart';
import 'package:EPASIEN/screens/splash/splash_screen.dart';
import 'package:EPASIEN/theme.dart';
import 'package:flutter/material.dart';
//import 'package:EPASIEN/routes.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      //initialRoute: Routes.INITIAL,
      home: SplashScreen(),
      getPages: AppPages.pages,
    );
  }
}
