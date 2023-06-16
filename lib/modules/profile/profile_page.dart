import 'package:flutter_getx/modules/profile/profile_actions.dart';
import 'package:flutter_getx/modules/profile/profile_binding.dart';
import 'package:flutter_getx/modules/profile/profile_controller.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
        ),
        body: Center(
          child: Obx(() {
            if (controller.isLoading.isTrue) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return Text(controller.profileUser.value.name ?? "");
            }
          }),
        ),
      ),
    );

  }
}