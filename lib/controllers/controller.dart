import 'package:get/state_manager.dart';

class Controller extends GetxController{
  var count = 0.obs;
  increment() => count++;
  decrement() => count--;
  reset() => count.value = 0;
}