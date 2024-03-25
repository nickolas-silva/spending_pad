import 'package:get/get.dart';
import 'package:spending_pad/controllers/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(() => LoginController());
  }
}
