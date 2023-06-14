import 'package:flutter_getx/modules/home/home_page.dart';
import 'package:flutter_getx/modules/home/home_binding.dart';
import 'package:flutter_getx/modules/profile/profile_binding.dart';
import 'package:flutter_getx/modules/profile/profile_page.dart';
import 'package:flutter_getx/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: AppRoutes.home,
        page: () => HomePage(),
        binding: HomeBinding()),
    GetPage(
        name: AppRoutes.profile,
        page: () => ProfilePage(),
        binding: ProfileBinding())
  ];
}
