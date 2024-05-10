import 'package:get/get.dart';

class LoginController extends GetxController {
  bool? isRemindMe = false;
  bool obsecureText = true;
  void checkRemindMe(bool? remindMe) {
    isRemindMe = remindMe ?? false;
    update();
  }
  void showObsecure() {
    obsecureText = !obsecureText;
    update();
  }
}
