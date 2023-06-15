import 'package:flutter_getx/modules/profile/profile_actions.dart';
import 'package:flutter_getx/modules/profile/profile_binding.dart';
import 'package:flutter_getx/modules/profile/profile_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: Center(
          child: TextButton(onPressed: () {ProfileActions().buttonPressed();}, child: Text("Press to print")),
        ),
      ),
    );

  }
}