import 'package:flutter/material.dart';
import 'package:flutter_getx/modules/home/home_controller.dart';
import 'package:flutter_getx/routes/app_routes.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Center(
          child: TextButton(onPressed: () {Get.toNamed(AppRoutes.profile);}, child: Text("Press")),
        ),
      ),
    );
  }
}