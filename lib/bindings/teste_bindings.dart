import 'package:get/get.dart';
import 'package:spending_pad/controllers/controller.dart';
class TesteBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Controller());
  }
}