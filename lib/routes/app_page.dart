import 'package:flutter_kepegawaian/screens/Ketersediaan_TT/screen_tt.dart';
import 'package:flutter_kepegawaian/screens/booking/booking.dart';
import 'package:flutter_kepegawaian/screens/fasilitas/layanan_unggulan.dart';
import 'package:flutter_kepegawaian/screens/home/components/categories.dart';
import 'package:flutter_kepegawaian/screens/home/home_screen.dart';
import 'package:flutter_kepegawaian/screens/jadwal_dokter/jadwaldokter.dart';
import 'package:flutter_kepegawaian/screens/login_success/login_success_screen.dart';
import 'package:flutter_kepegawaian/screens/pengaduan/pengaduan.dart';
import 'package:flutter_kepegawaian/screens/profile/profile_screen.dart';
import 'package:flutter_kepegawaian/screens/riwayat_booking/riwayat_booking.dart';
import 'package:flutter_kepegawaian/screens/riwayat_perawatan/riwayat_perawatan.dart';
import 'package:flutter_kepegawaian/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_kepegawaian/screens/sign_up/sign_up_screen.dart';
import 'package:flutter_kepegawaian/screens/splash/splash_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: Routes.SignInScreen,
      page: () => SignInScreen(),
    ),
    GetPage(
      name: Routes.SignUpScreen,
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: Routes.CATEGORY,
      page: () => Categories(),
    ),
    GetPage(
      name: Routes.LayananUnggulan,
      page: () => LayananUnggulan(),
    ),
    GetPage(
      name: Routes.Booking,
      page: () => Booking(),
    ),
    GetPage(
      name: Routes.LoginSuccessScreen,
      page: () => LoginSuccessScreen(),
    ),
    GetPage(
      name: Routes.RiwayatBooking,
      page: () => RiwayatBooking(),
    ),
    GetPage(
      name: Routes.Pengaduan,
      page: () => Pengaduan(),
    ),
    GetPage(
      name: Routes.RiwayatPerawatan,
      page: () => RiwayatPerawatan(),
    ),
    GetPage(
      name: Routes.JadwalDokter,
      page: () => JadwalDokter(),
    ),
    GetPage(
      name: Routes.ProfileScreen,
      page: () => ProfileScreen(),
    ),
    GetPage(
      name: Routes.KetersediaanTT,
      page: () => KetersediaanTT(),
    )
  ];
}
