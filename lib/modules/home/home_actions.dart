
import 'package:flutter_getx/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeActions {

  buttonPressed() {
    Get.toNamed(AppRoutes.profile);
  }
}