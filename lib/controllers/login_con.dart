import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:responsive_design/custom_classes.dart';

class LoginController extends GetxController {
  var is_hidden = true.obs;
  var email = TextEditingController().obs;
  var passw = TextEditingController().obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void validateFields(String email, String passw) {
    if (email.isEmpty) {
      CustomMessage().customToast('Enter your email address');
    }
    if(passw.isEmpty){
      CustomMessage().customToast("Password Never be blank");
    }
    if (GetUtils.isEmail(email)) {}
  }
}
