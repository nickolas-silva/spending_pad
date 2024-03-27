import 'package:get/get.dart';
import 'package:spending_pad/controllers/home_controller.dart';

class HomeBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}