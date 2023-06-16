
import 'package:get/get.dart';

import 'package:flutter_getx/model/user.dart';
import 'package:flutter_getx/modules/profile/profile_services.dart';

class ProfileController extends GetxController {
  var profileUser = User().obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    getUser();
    super.onInit();
  }
  void getUser() async {
    try {
      isLoading(true);
      var user = await ProductServices.getUser();
      if (user != null){
        profileUser.value = user;
      }
    } finally {
      isLoading(false);
    }

  }
}
