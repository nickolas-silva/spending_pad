import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var email = '';
  var password = '';
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  //GlobalKey<FormState> get formKey => formKey;
  void setEmail(String value) {
    email = value;
    update();
  }

  void setPassword(String value) {
    password = value;
    update();
  }

  bool login(){
    if(formKey.currentState!.validate()){
      print('Formulário validado');
      return true;
    } else {
      print('Formulário inválido');
      return false;
    }
  }

}
