import 'package:flutter/material.dart';
//import 'package:flutter_kepegawaian/routes.dart';
import 'package:flutter_kepegawaian/routes/app_page.dart';
import 'package:flutter_kepegawaian/screens/splash/splash_screen.dart';
import 'package:flutter_kepegawaian/theme.dart';
import 'package:get/get.dart';

void main() {
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
